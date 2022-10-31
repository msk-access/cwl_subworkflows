# Variant Annotation sub-workflows

## variant_annotation

### Tools used

- [snpift](https://msk-access.gitbook.io/command-line-tools-cwl/snpsift_annotate_5.0/)
- [vcf2maf](https://msk-access.gitbook.io/command-line-tools-cwl/vcf2maf_1.6.21/)

#### Usage

```bash
usage: variant_normalize_sort.cwl [-h] --input INPUT --fastaRef FASTAREF
                                  --stdout
                                  [--bgzip_output_name BGZIP_OUTPUT_NAME]
                                  [--preset PRESET]
                                  [--output_type OUTPUT_TYPE]
                                  [--norm_output_name NORM_OUTPUT_NAME]
                                  [--multiallelics MULTIALLELICS]
                                  [--check_ref CHECK_REF]
                                  [--sort_output_name SORT_OUTPUT_NAME]
                                  [--bgzip_output_directory BGZIP_OUTPUT_DIRECTORY]
                                  [job_order]

positional arguments:
  job_order             Job input json file

optional arguments:
  -h, --help            show this help message and exit
  --input INPUT
  --fastaRef FASTAREF
  --stdout
  --bgzip_output_name BGZIP_OUTPUT_NAME
  --preset PRESET
  --output_type OUTPUT_TYPE
  --norm_output_name NORM_OUTPUT_NAME
  --multiallelics MULTIALLELICS
  --check_ref CHECK_REF
  --sort_output_name SORT_OUTPUT_NAME
  --bgzip_output_directory BGZIP_OUTPUT_DIRECTORY

```

