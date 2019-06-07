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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        hhwealth_quart    pers_wast   n_cell      n
------------  -------------------------  -----------------------------  ---------------  ----------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                 0       20     82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                 1        1     82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                 0       20     82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                 1        1     82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                 0       19     82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                 1        1     82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                 0       18     82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                 1        2     82
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                 0       16     71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                 1        2     71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                 0       16     71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                 1        3     71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                 0       15     71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                 1        2     71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                 0       17     71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                 1        0     71
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                 0       11     42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                 1        0     42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                 0       11     42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                 1        0     42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                 0       10     42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                 1        0     42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                 0       10     42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                 1        0     42
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                 0       10     36
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                 1        0     36
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                 0        9     36
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                 1        0     36
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                 0        8     36
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                 1        0     36
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                 0        9     36
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                 1        0     36
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                 0       17     68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                 1        0     68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                 0       16     68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                 1        1     68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                 0       17     68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                 1        0     68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                 0       17     68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                 1        0     68
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 0       15     60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 1        0     60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 0       15     60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 1        0     60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 0       15     60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 1        0     60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 0       15     60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 1        0     60
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                 0       93    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                 1        3    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                 0       83    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                 1        8    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                 0       89    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                 1        6    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                 0       85    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                 1        6    373
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                 0       90    410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                 1       10    410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                 0       95    410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                 1       10    410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                 0       87    410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                 1       15    410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                 0       90    410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                 1       13    410
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                 0      165    638
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                 1        2    638
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                 0      151    638
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                 1        5    638
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                 0      150    638
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                 1        5    638
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                 0      157    638
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                 1        3    638
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 0      524   2157
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 1       12   2157
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 0      624   2157
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 1       25   2157
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 0      430   2157
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 1        7   2157
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 0      521   2157
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 1       14   2157
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                 0      130    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                 1       18    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                 0      125    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                 1       26    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                 0      127    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                 1       21    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                 0      125    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                 1       20    592
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                 0       52    215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                 1        0    215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                 0       59    215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                 1        0    215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                 0       52    215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                 1        0    215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                 0       52    215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                 1        0    215
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                 0      194    491
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                 1        6    491
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                 0      104    491
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                 1        2    491
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                 0       81    491
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                 1       11    491
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                 0       86    491
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                 1        7    491
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                 0      754   2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                 1       19   2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                 0      556   2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                 1       48   2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                 0      476   2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                 1       27   2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                 0      881   2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                 1       50   2811
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                 0      188    715
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                 1        1    715
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                 0      172    715
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                 1        3    715
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                 0      176    715
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                 1        2    715
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                 0      173    715
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                 1        0    715
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                 0     2109   7756
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                 1      105   7756
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                 0     1539   7756
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                 1      127   7756
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                 0     1804   7756
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                 1      112   7756
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                 0     1854   7756
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                 1      106   7756
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                 0      303   1377
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                 1       13   1377
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                 0      314   1377
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                 1       37   1377
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                 0      298   1377
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                 1       31   1377
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                 0      350   1377
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                 1       31   1377
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                 0       21     82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                 1        0     82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                 0       20     82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                 1        1     82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                 0       20     82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                 1        0     82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                 0       18     82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                 1        2     82
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                 0       16     71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                 1        2     71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                 0       18     71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                 1        1     71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                 0       14     71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                 1        3     71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                 0       16     71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                 1        1     71
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                 0       11     42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                 1        0     42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                 0       11     42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                 1        0     42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                 0       10     42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                 1        0     42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                 0       10     42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                 1        0     42
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                 0       10     36
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                 1        0     36
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                 0        9     36
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                 1        0     36
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                 0        8     36
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                 1        0     36
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                 0        9     36
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                 1        0     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                 0       17     68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                 1        0     68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                 0       16     68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                 1        1     68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                 0       17     68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                 1        0     68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                 0       17     68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                 1        0     68
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 0       15     60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 1        0     60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 0       15     60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 1        0     60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 0       15     60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 1        0     60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 0       15     60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 1        0     60
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                 0       86    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                 1        6    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                 0       75    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                 1       12    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                 0       72    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                 1       18    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                 0       75    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                 1       14    358
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                 0       84    402
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                 1       14    402
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                 0       86    402
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                 1       17    402
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                 0       85    402
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                 1       16    402
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                 0       83    402
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                 1       17    402
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                 0      163    635
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                 1        4    635
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                 0      152    635
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                 1        2    635
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                 0      149    635
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                 1        6    635
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                 0      157    635
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                 1        2    635
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 0      496   2053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 1       11   2053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 0      602   2053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 1       21   2053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 0      408   2053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 1        7   2053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 0      495   2053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 1       13   2053
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                 0      120    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                 1       12    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                 0      127    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                 1       14    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                 0      116    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                 1       19    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                 0      114    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                 1       20    542
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4                 0       52    215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4                 1        0    215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1                 0       59    215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1                 1        0    215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2                 0       52    215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2                 1        0    215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3                 0       52    215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3                 1        0    215
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                 0      210    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                 1       13    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                 0      174    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                 1       16    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                 0      144    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                 1        9    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                 0      273    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                 1       14    853
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                 0        9     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                 1        1     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                 0        5     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                 1        1     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                 0        6     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                 1        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                 0        3     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                 1        0     25
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                 0       20     82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                 1        1     82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                 0       20     82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                 1        1     82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                 0       19     82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                 1        1     82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                 0       18     82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                 1        2     82
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                 0       16     71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                 1        2     71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                 0       16     71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                 1        3     71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                 0       15     71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                 1        2     71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                 0       17     71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                 1        0     71
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                 0       11     42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                 1        0     42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                 0       11     42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                 1        0     42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                 0       10     42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                 1        0     42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                 0       10     42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                 1        0     42
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                 0       10     36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                 1        0     36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                 0        9     36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                 1        0     36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                 0        8     36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                 1        0     36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                 0        9     36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                 1        0     36
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                 0       17     68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                 1        0     68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                 0       16     68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                 1        1     68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                 0       17     68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                 1        0     68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                 0       17     68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                 1        0     68
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 0       15     60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 1        0     60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 0       15     60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 1        0     60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 0       15     60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 1        0     60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 0       15     60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 1        0     60
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                 0       93    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                 1        3    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                 0       83    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                 1        8    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                 0       89    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                 1        6    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                 0       85    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                 1        6    373
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4                 0       90    410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4                 1       10    410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1                 0       95    410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1                 1       10    410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2                 0       87    410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2                 1       15    410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3                 0       90    410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3                 1       13    410
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                 0      165    638
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                 1        2    638
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                 0      151    638
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                 1        5    638
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                 0      150    638
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                 1        5    638
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                 0      157    638
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                 1        3    638
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 0      524   2157
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 1       12   2157
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 0      624   2157
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 1       25   2157
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 0      430   2157
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 1        7   2157
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 0      521   2157
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 1       14   2157
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                 0      130    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                 1       18    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                 0      125    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                 1       26    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                 0      127    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                 1       21    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                 0      125    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                 1       20    592
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                 0       52    215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                 1        0    215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                 0       59    215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                 1        0    215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                 0       52    215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                 1        0    215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                 0       52    215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                 1        0    215
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                 0      194    491
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                 1        6    491
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                 0      104    491
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                 1        2    491
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                 0       81    491
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                 1       11    491
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                 0       86    491
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                 1        7    491
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                 0      754   2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                 1       19   2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                 0      556   2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                 1       48   2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                 0      476   2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                 1       27   2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                 0      881   2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                 1       50   2811
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                 0      188    715
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                 1        1    715
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                 0      172    715
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                 1        3    715
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                 0      176    715
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                 1        2    715
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                 0      173    715
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                 1        0    715
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                 0     2109   7756
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                 1      105   7756
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                 0     1539   7756
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                 1      127   7756
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                 0     1804   7756
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                 1      112   7756
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                 0     1854   7756
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                 1      106   7756
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                 0      303   1377
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                 1       13   1377
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                 0      314   1377
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                 1       37   1377
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                 0      298   1377
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                 1       31   1377
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                 0      350   1377
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                 1       31   1377


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/8c51088d-377e-42f5-8579-64015a477b65/36c47350-d624-414e-a8e1-92af298831de/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8c51088d-377e-42f5-8579-64015a477b65/36c47350-d624-414e-a8e1-92af298831de/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8c51088d-377e-42f5-8579-64015a477b65/36c47350-d624-414e-a8e1-92af298831de/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8c51088d-377e-42f5-8579-64015a477b65/36c47350-d624-414e-a8e1-92af298831de/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1000000   0.0411292   0.1588708
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.0952381   0.0390226   0.1514536
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1470588   0.0782438   0.2158739
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1262136   0.0620017   0.1904255
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0223881   0.0098607   0.0349154
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0385208   0.0237112   0.0533304
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0160183   0.0042447   0.0277919
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0261682   0.0126381   0.0396983
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1216216   0.0689192   0.1743240
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1721854   0.1119168   0.2324541
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1418919   0.0856274   0.1981563
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1379310   0.0817573   0.1941048
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0245796   0.0136622   0.0354969
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0794702   0.0578963   0.1010441
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0536779   0.0339783   0.0733776
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0537057   0.0392222   0.0681892
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0474255   0.0367325   0.0581184
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0762305   0.0623915   0.0900695
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0584551   0.0461726   0.0707376
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0540816   0.0438898   0.0642735
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0411392   0.0074858   0.0747927
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1054131   0.0691579   0.1416684
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0942249   0.0656793   0.1227705
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0813648   0.0544753   0.1082543
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.0652174   0.0146933   0.1157415
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1379310   0.0653709   0.2104911
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.2000000   0.1172450   0.2827550
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.1573034   0.0815564   0.2330503
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1428571   0.0734901   0.2122242
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.1650485   0.0932680   0.2368291
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1584158   0.0871180   0.2297137
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1700000   0.0962856   0.2437144
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0216963   0.0090116   0.0343809
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0337079   0.0195326   0.0478831
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0168675   0.0044749   0.0292600
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0255906   0.0118554   0.0393257
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0909091   0.0418218   0.1399964
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.0992908   0.0498840   0.1486975
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1407407   0.0820250   0.1994564
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1492537   0.0888645   0.2096429
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0582960   0.0275260   0.0890659
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0842105   0.0447005   0.1237205
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0588235   0.0215184   0.0961286
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0487805   0.0238446   0.0737164
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1000000   0.0411292   0.1588708
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.0952381   0.0390226   0.1514536
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1470588   0.0782438   0.2158739
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1262136   0.0620017   0.1904255
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0223881   0.0098607   0.0349154
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0385208   0.0237112   0.0533304
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0160183   0.0042447   0.0277919
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0261682   0.0126381   0.0396983
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1216216   0.0689192   0.1743240
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1721854   0.1119168   0.2324541
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1418919   0.0856274   0.1981563
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1379310   0.0817573   0.1941048
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0245796   0.0136622   0.0354969
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0794702   0.0578963   0.1010441
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0536779   0.0339783   0.0733776
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0537057   0.0392222   0.0681892
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0474255   0.0367325   0.0581184
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0762305   0.0623915   0.0900695
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0584551   0.0461726   0.0707376
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0540816   0.0438898   0.0642735
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0411392   0.0074858   0.0747927
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1054131   0.0691579   0.1416684
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0942249   0.0656793   0.1227705
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0813648   0.0544753   0.1082543


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0268892   0.0200612   0.0337172
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1435811   0.1153098   0.1718524
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0580196   0.0522035   0.0638357
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0813362   0.0653528   0.0973196
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1396648   0.1037072   0.1756225
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1592040   0.1233945   0.1950135
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0253288   0.0185306   0.0321270
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1199262   0.0925505   0.1473020
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0609613   0.0448957   0.0770269
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0268892   0.0200612   0.0337172
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1435811   0.1153098   0.1718524
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0580196   0.0522035   0.0638357
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0813362   0.0653528   0.0973196


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.9523810   0.4137684   2.192119
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.4705882   0.6932491   3.119556
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.2621359   0.5796824   2.748034
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.7205958   0.8726409   3.392518
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7154845   0.2840630   1.802128
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.1688474   0.5456139   2.503976
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.4157469   0.8110866   2.471178
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.1666667   0.6484135   2.099141
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.1340996   0.6257314   2.055486
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         3.2331823   1.9211236   5.441330
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         2.1838443   1.2274252   3.885513
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         2.1849737   1.2994972   3.673813
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.6073744   1.2186157   2.120153
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.2325678   0.8995839   1.688807
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.1403498   0.8536296   1.523375
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         2.5623491   1.0537743   6.230588
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         2.2903902   0.9359909   5.604635
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.9777910   0.8116715   4.819262
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         2.1149425   0.8291086   5.394929
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         3.0666667   1.2741917   7.380714
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         2.4119850   0.9687855   6.005119
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.1553398   0.6020198   2.217220
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.1089109   0.5719560   2.149961
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.1900000   0.6206144   2.281771
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.5536261   0.7560946   3.192397
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7774371   0.3040121   1.988106
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.1794918   0.5333532   2.608404
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.0921985   0.5240950   2.276110
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.5481480   0.7824749   3.063053
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.6417909   0.8361514   3.223671
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.4445344   0.7128959   2.927047
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.0090498   0.4421567   2.302761
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         0.8367730   0.4013236   1.744699
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.9523810   0.4137684   2.192119
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.4705882   0.6932491   3.119556
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.2621359   0.5796824   2.748034
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.7205958   0.8726409   3.392518
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7154845   0.2840630   1.802128
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.1688474   0.5456139   2.503976
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.4157469   0.8110866   2.471178
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.1666667   0.6484135   2.099141
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.1340996   0.6257314   2.055486
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         3.2331823   1.9211236   5.441330
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         2.1838443   1.2274252   3.885513
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         2.1849737   1.2994972   3.673813
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.6073744   1.2186157   2.120153
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.2325678   0.8995839   1.688807
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.1403498   0.8536296   1.523375
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         2.5623491   1.0537743   6.230588
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         2.2903902   0.9359909   5.604635
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.9777910   0.8116715   4.819262


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.0170732   -0.0353292   0.0694755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0045011   -0.0067043   0.0157066
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0219595   -0.0248170   0.0687360
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0266478    0.0156896   0.0376059
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0105941    0.0017214   0.0194669
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0401970    0.0098202   0.0705738
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.0744474    0.0241121   0.1247827
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.0163468   -0.0448746   0.0775683
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0036325   -0.0076655   0.0149306
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0290171   -0.0155400   0.0735742
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0026653   -0.0239777   0.0293084
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.0170732   -0.0353292   0.0694755
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0045011   -0.0067043   0.0157066
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0219595   -0.0248170   0.0687360
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0266478    0.0156896   0.0376059
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0105941    0.0017214   0.0194669
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0401970    0.0098202   0.0705738


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1458333   -0.4403244   0.4934470
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1673958   -0.3700147   0.4939983
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1529412   -0.2428950   0.4227118
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.5201865    0.2748607   0.6825148
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.1825956    0.0127312   0.3232340
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.4942077   -0.0752226   0.7620717
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.5330435    0.0379996   0.7733386
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1026786   -0.3767125   0.4151388
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1434153   -0.4391886   0.4901729
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.2419580   -0.2321932   0.5336545
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0437220   -0.5101151   0.3944385
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1458333   -0.4403244   0.4934470
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1673958   -0.3700147   0.4939983
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1529412   -0.2428950   0.4227118
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.5201865    0.2748607   0.6825148
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.1825956    0.0127312   0.3232340
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.4942077   -0.0752226   0.7620717
