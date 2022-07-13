---
description: Specifications for performing Indel Re-alignment on a BAM file.

---

## Variant postprocessing sub-workflows

### Tools used:

-   [bcftools bgzip](https://msk-access.gitbook.io/command-line-tools-cwl/bcftools_1.15.1/)
-   [bcftools tabix](https://msk-access.gitbook.io/command-line-tools-cwl/bcftools_1.15.1/)
-   [bcftools norm](https://msk-access.gitbook.io/command-line-tools-cwl/bcftools_1.15.1/)
-   [bcftools sort](https://msk-access.gitbook.io/command-line-tools-cwl/bcftools_1.15.1/)
-   [bcftools concat](https://msk-access.gitbook.io/command-line-tools-cwl/bcftools_1.15.1/)

### Usage

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

```shell
usage: variant_sort.cwl [-h] --input INPUT --stdout
                        [--bgzip_output_name BGZIP_OUTPUT_NAME]
                        [--preset PRESET] [--output_type OUTPUT_TYPE]
                        [--sort_output_name SORT_OUTPUT_NAME]
                        [job_order]

positional arguments:
  job_order             Job input json file

optional arguments:
  -h, --help            show this help message and exit
  --input INPUT
  --stdout
  --bgzip_output_name BGZIP_OUTPUT_NAME
  --preset PRESET
  --output_type OUTPUT_TYPE
  --sort_output_name SORT_OUTPUT_NAME
```

```shell
usage: variants_concat.cwl [-h] --fastaRef FASTAREF --input INPUT
                           [--bgzip_output_name BGZIP_OUTPUT_NAME]
                           [--check_ref CHECK_REF]
                           [--multiallelics MULTIALLELICS]
                           [--norm_output_name NORM_OUTPUT_NAME]
                           [--output_type OUTPUT_TYPE] [--preset PRESET]
                           [--sort_output_name SORT_OUTPUT_NAME]
                           [--complex_sort_output_name COMPLEX_SORT_OUTPUT_NAME]
                           --complex_input COMPLEX_INPUT
                           [--complex_bgzip_output_name COMPLEX_BGZIP_OUTPUT_NAME]
                           --output_name OUTPUT_NAME [--allow_overlaps]
                           --stdout
                           [job_order]

positional arguments:
  job_order             Job input json file

optional arguments:
  -h, --help            show this help message and exit
  --fastaRef FASTAREF
  --input INPUT
  --bgzip_output_name BGZIP_OUTPUT_NAME
  --check_ref CHECK_REF
  --multiallelics MULTIALLELICS
  --norm_output_name NORM_OUTPUT_NAME
  --output_type OUTPUT_TYPE
  --preset PRESET
  --sort_output_name SORT_OUTPUT_NAME
  --complex_sort_output_name COMPLEX_SORT_OUTPUT_NAME
  --complex_input COMPLEX_INPUT
  --complex_bgzip_output_name COMPLEX_BGZIP_OUTPUT_NAME
  --output_name OUTPUT_NAME
  --allow_overlaps
  --stdout
```

