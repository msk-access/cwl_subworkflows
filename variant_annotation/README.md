# Variant Annotation sub-workflows

## variant_annotation

### Tools used

- [snpift](https://msk-access.gitbook.io/command-line-tools-cwl/snpsift_annotate_5.0/)
- [vcf2maf](https://msk-access.gitbook.io/command-line-tools-cwl/vcf2maf_1.6.21/)
- [maf_annotated_by_bed](https://msk-access.gitbook.io/command-line-tools-cwl/postprocessing_variant_calls/0.2.0/maf_annotated_by_bed/)

#### Usage

```bash
usage: /work/bergerm1/bergerlab/sivaprk/github/cwl_subworkflows/variant_annotation/variant_annotation.cwl
       [-h] --input_cosmicCountDB_vcf INPUT_COSMICCOUNTDB_VCF
       --vardict_input_vcf VARDICT_INPUT_VCF --input_cosmicprevalenceDB_vcf
       INPUT_COSMICPREVALENCEDB_VCF [--min_hom_vaf MIN_HOM_VAF]
       [--output_vcf2mafName OUTPUT_VCF2MAFNAME] [--retain_info RETAIN_INFO]
       [--tumor_id TUMOR_ID] [--snpsift_countOpName SNPSIFT_COUNTOPNAME]
       [--snpsift_prevalOpName SNPSIFT_PREVALOPNAME] --opOncoKbMafName
       OPONCOKBMAFNAME --oncoKbApiToken ONCOKBAPITOKEN
       [--oncoKbAnnotateHotspots] --input_complexity_bed INPUT_COMPLEXITY_BED
       --input_DUST_bed INPUT_DUST_BED
       [--output_DUST_filename OUTPUT_DUST_FILENAME]
       [--column_name_DUST COLUMN_NAME_DUST]
       [--output_complexity_filename OUTPUT_COMPLEXITY_FILENAME]
       [--column_name_complexity COLUMN_NAME_COMPLEXITY]
       [job_order]

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
  --input_complexity_bed INPUT_COMPLEXITY_BED
  --input_DUST_bed INPUT_DUST_BED
  --output_DUST_filename OUTPUT_DUST_FILENAME
  --column_name_DUST COLUMN_NAME_DUST
  --output_complexity_filename OUTPUT_COMPLEXITY_FILENAME
  --column_name_complexity COLUMN_NAME_COMPLEXITY
```

