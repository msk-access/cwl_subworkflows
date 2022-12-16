# Variant Annotation sub-workflows

## variant_annotation

### Tools used

- [snpift](https://msk-access.gitbook.io/command-line-tools-cwl/snpsift_annotate_5.0/)
- [vcf2maf](https://msk-access.gitbook.io/command-line-tools-cwl/vcf2maf_1.6.21/)
- [oncokb_annotator](https://msk-access.gitbook.io/command-line-tools-cwl/oncokb_annotator_3.2.2/)

#### Usage

```bash
usage: variant_annotation.cwl [-h]   --input_cosmicCountDB_vcf INPUT_COSMICCOUNTDB_VCF
       --vardict_input_vcf VARDICT_INPUT_VCF --input_cosmicprevalenceDB_vcf
       INPUT_COSMICPREVALENCEDB_VCF [--min_hom_vaf MIN_HOM_VAF]
       [--output_mafName OUTPUT_MAFNAME] [--retain_info RETAIN_INFO]
       [--tumor_id TUMOR_ID] [--snpsift_countOpName SNPSIFT_COUNTOPNAME]
       [--snpsift_prevalOpName SNPSIFT_PREVALOPNAME] --opOncoKbMafName
       OPONCOKBMAFNAME --oncoKbApiToken ONCOKBAPITOKEN
       [--oncoKbAnnotateHotspots]
       [job_order]

positional arguments:
  job_order             Job input json file

optional arguments:
  -h, --help            show this help message and exit
  --input_cosmicCountDB_vcf INPUT_COSMICCOUNTDB_VCF
  --vardict_input_vcf VARDICT_INPUT_VCF
  --input_cosmicprevalenceDB_vcf INPUT_COSMICPREVALENCEDB_VCF
  --min_hom_vaf MIN_HOM_VAF
  --output_mafName OUTPUT_MAFNAME
  --retain_info RETAIN_INFO
  --tumor_id TUMOR_ID
  --snpsift_countOpName SNPSIFT_COUNTOPNAME
  --snpsift_prevalOpName SNPSIFT_PREVALOPNAME
  --opOncoKbMafName OPONCOKBMAFNAME
  --oncoKbApiToken ONCOKBAPITOKEN
  --oncoKbAnnotateHotspots
```

