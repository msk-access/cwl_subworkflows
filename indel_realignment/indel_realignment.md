---
description: Specifications for performing Indel Re-alignment on a BAM file.
---

## Indel Re-alignment sub-workflow specification - abra_fx.cwl

### Tools used:

-   [bedtools genomecov](https://msk-access.gitbook.io/command-line-tools-cwl/bedtools/bedtools_genomecov_v2.28.0_cv2)
-   [bedtools merge](https://msk-access.gitbook.io/command-line-tools-cwl/bedtools/bedtools_merge_v2.28.0_cv2)
-   [ABRA2](https://msk-access.gitbook.io/command-line-tools-cwl/abra2/abra2_2.22)
-   [GATK - FixMateInformation](https://msk-access.gitbook.io/command-line-tools-cwl/picard-tools/picard_fix_mate_information_4.1.8.1)

### Usage

```bash
usage: indel_realignment.cwl [-h] [--window_size WINDOW_SIZE]
                             [--soft_clip_contig SOFT_CLIP_CONTIG]
                             [--scoring_gap_alignments SCORING_GAP_ALIGNMENTS]
                             --reference_fasta REFERENCE_FASTA [--no_sort]
                             [--maximum_mixmatch_rate MAXIMUM_MIXMATCH_RATE]
                             [--maximum_average_depth MAXIMUM_AVERAGE_DEPTH]
                             [--ignore_bad_assembly]
                             [--contig_anchor CONTIG_ANCHOR]
                             [--consensus_sequence] [--bam_index]
                             [--number_of_threads NUMBER_OF_THREADS]
                             [--option_bedgraph] [--no_edge_complex_indel]
                             [--distance_between_features DISTANCE_BETWEEN_FEATURES]
                             [job_order]

positional arguments:
  job_order             Job input json file

optional arguments:
  -h, --help            show this help message and exit
  --window_size WINDOW_SIZE
  --soft_clip_contig SOFT_CLIP_CONTIG
  --scoring_gap_alignments SCORING_GAP_ALIGNMENTS
  --reference_fasta REFERENCE_FASTA
  --no_sort
  --maximum_mixmatch_rate MAXIMUM_MIXMATCH_RATE
  --maximum_average_depth MAXIMUM_AVERAGE_DEPTH
  --ignore_bad_assembly
  --contig_anchor CONTIG_ANCHOR
  --consensus_sequence
  --bam_index
  --number_of_threads NUMBER_OF_THREADS
  --option_bedgraph
  --no_edge_complex_indel
  --distance_between_features DISTANCE_BETWEEN_FEATURES
```
