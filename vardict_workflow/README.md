### Introduction

The sub-workflow calls the variant from single sample bam and the returned variants are processed. The main outputs are the following:

1. Variant calls from VarDict.
2. The above variant calls are filtered and separated into simple and complex.
3. VCF files ar.
4. Simple and complex VCF files concatenated into one bgzipped VCF.

### Tools used:

- [bcftools_1.15.1](../command_line_tools/bcftools_1.15.1/README.md)
- [Vardict](../vardictjava/README.md)
- [Post Processing Vardict Calls](../postprocessing_variant_calls/0.1.4/)

### Usage 

```bash
run_processed_vardict.cwl [-h] --reference_fasta REFERENCE_FASTA
                              --input_bam_case INPUT_BAM_CASE
                              --bedfile BEDFILE
                              --sample_name SAMPLE_NAME
                              --concat_output_name CONCAT_OUTPUT_NAME
                              --stdout
                              --vardict_output_vcf_name VARDICT_OUTPUT_VCF_NAME
```

