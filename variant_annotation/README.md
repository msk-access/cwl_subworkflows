# Variant Annotation sub-workflows

## variant_annotation

### Tools used

- [snpift](https://msk-access.gitbook.io/command-line-tools-cwl/snpsift_annotate_5.0/)
- [vcf2maf](https://msk-access.gitbook.io/command-line-tools-cwl/vcf2maf_1.6.21/)
- [maf_annotated_by_bed](https://msk-access.gitbook.io/command-line-tools-cwl/postprocessing_variant_calls/0.2.3/maf_annotated_by_bed/)
- [maf_annotated_by_tsv](https://msk-access.gitbook.io/command-line-tools-cwl/postprocessing_variant_calls/0.2.3/maf_annotated_by_tsv/)

#### Usage

```bash
usage: variant_annotation.cwl
        [-h] --input_cosmicCountDB_vcf INPUT_COSMICCOUNTDB_VCF
       --vardict_input_vcf VARDICT_INPUT_VCF --input_cosmicprevalenceDB_vcf
       INPUT_COSMICPREVALENCEDB_VCF [--min_hom_vaf MIN_HOM_VAF]
       [--output_vcf2mafName OUTPUT_VCF2MAFNAME] [--retain_info RETAIN_INFO]
       [--tumor_id TUMOR_ID] [--snpsift_countOpName SNPSIFT_COUNTOPNAME]
       [--snpsift_prevalOpName SNPSIFT_PREVALOPNAME] --opOncoKbMafName
       OPONCOKBMAFNAME --oncoKbApiToken ONCOKBAPITOKEN
       [--oncoKbAnnotateHotspots] --input_mappability_bed
       INPUT_MAPPABILITY_BED --input_complexity_bed INPUT_COMPLEXITY_BED
       --output_mappability_filename OUTPUT_MAPPABILITY_FILENAME
       [--column_name_mappability COLUMN_NAME_MAPPABILITY]
       --output_complexity_filename OUTPUT_COMPLEXITY_FILENAME
       [--column_name_complexity COLUMN_NAME_COMPLEXITY]
       --input_hotspot_tsv_file INPUT_HOTSPOT_TSV_FILE
       [--output_column_name_hotpsot OUTPUT_COLUMN_NAME_HOTPSOT]
       [--output_hotspot_maf_name OUTPUT_HOTSPOT_MAF_NAME]
       --input_47kchpd_tsv_file INPUT_47KCHPD_TSV_FILE
       [--output_47kchpd_maf_name OUTPUT_47KCHPD_MAF_NAME]
       [--output_column_name_47kchpd OUTPUT_COLUMN_NAME_47KCHPD]
       --input_panmeloid_tsv_file INPUT_PANMELOID_TSV_FILE
       [--output_maf_name_panmyeloid OUTPUT_MAF_NAME_PANMYELOID]
       [--output_column_name_panmyeloid OUTPUT_COLUMN_NAME_PANMYELOID]
       [job_order]

variant_annotation

positional arguments:
  job_order             Job input json file

optional arguments:
  -h, --help            show this help message and exit
  --input_cosmicCountDB_vcf INPUT_COSMICCOUNTDB_VCF
  --vardict_input_vcf VARDICT_INPUT_VCF
  --input_cosmicprevalenceDB_vcf INPUT_COSMICPREVALENCEDB_VCF
  --min_hom_vaf MIN_HOM_VAF
  --output_vcf2mafName OUTPUT_VCF2MAFNAME
  --retain_info RETAIN_INFO
  --tumor_id TUMOR_ID
  --snpsift_countOpName SNPSIFT_COUNTOPNAME
  --snpsift_prevalOpName SNPSIFT_PREVALOPNAME
  --opOncoKbMafName OPONCOKBMAFNAME
  --oncoKbApiToken ONCOKBAPITOKEN
  --oncoKbAnnotateHotspots
  --input_mappability_bed INPUT_MAPPABILITY_BED
  --input_complexity_bed INPUT_COMPLEXITY_BED
  --output_mappability_filename OUTPUT_MAPPABILITY_FILENAME
  --column_name_mappability COLUMN_NAME_MAPPABILITY
  --output_complexity_filename OUTPUT_COMPLEXITY_FILENAME
  --column_name_complexity COLUMN_NAME_COMPLEXITY
  --input_hotspot_tsv_file INPUT_HOTSPOT_TSV_FILE
  --output_column_name_hotpsot OUTPUT_COLUMN_NAME_HOTPSOT
  --output_hotspot_maf_name OUTPUT_HOTSPOT_MAF_NAME
  --input_47kchpd_tsv_file INPUT_47KCHPD_TSV_FILE
  --output_47kchpd_maf_name OUTPUT_47KCHPD_MAF_NAME
  --output_column_name_47kchpd OUTPUT_COLUMN_NAME_47KCHPD
  --input_panmeloid_tsv_file INPUT_PANMELOID_TSV_FILE
  --output_maf_name_panmyeloid OUTPUT_MAF_NAME_PANMYELOID
  --output_column_name_panmyeloid OUTPUT_COLUMN_NAME_PANMYELOID
```

## Chipvar_postprocessing

### Tools used

- [maf_filter_cmoch](https://msk-access.gitbook.io/command-line-tools-cwl/postprocessing_variant_calls/0.2.3/maf_filter_cmoch/)
- [maf_tag_cmoch](https://msk-access.gitbook.io/command-line-tools-cwl/postprocessing_variant_calls/0.2.3/maf_tag_cmoch/)

#### Usage

```
usage: chipvar_processing.cwl
[-h] --input_variant_annotated_maf INPUT_VARIANT_ANNOTATED_MAF
       [--output_maf_name_filter OUTPUT_MAF_NAME_FILTER]
       [--output_maf_name_tag OUTPUT_MAF_NAME_TAG]
       [job_order]

chipvar_processing

positional arguments:
  job_order             Job input json file

optional arguments:
  -h, --help            show this help message and exit
  --input_variant_annotated_maf INPUT_VARIANT_ANNOTATED_MAF
  --output_maf_name_filter OUTPUT_MAF_NAME_FILTER
  --output_maf_name_tag OUTPUT_MAF_NAME_TAG
```

