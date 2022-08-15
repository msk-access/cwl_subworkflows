{
    "$graph": [
        {
            "class": "CommandLineTool",
            "id": "#fgbio_filter_consensus_reads_1.2.0.cwl",
            "baseCommand": [
                "fgbio"
            ],
            "inputs": [
                {
                    "id": "#fgbio_filter_consensus_reads_1.2.0.cwl/fgbio_filter_consensus_reads_1_2_0/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#fgbio_filter_consensus_reads_1.2.0.cwl/fgbio_filter_consensus_reads_1_2_0/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#fgbio_filter_consensus_reads_1.2.0.cwl/fgbio_filter_consensus_reads_1_2_0/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#fgbio_filter_consensus_reads_1.2.0.cwl/fgbio_filter_consensus_reads_1_2_0/input",
                    "type": "File",
                    "inputBinding": {
                        "position": 2,
                        "prefix": "--input",
                        "shellQuote": false
                    },
                    "doc": "The input SAM or BAM file."
                },
                {
                    "id": "#fgbio_filter_consensus_reads_1.2.0.cwl/fgbio_filter_consensus_reads_1_2_0/output_file_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "Output SAM or BAM file to write consensus reads."
                },
                {
                    "id": "#fgbio_filter_consensus_reads_1.2.0.cwl/fgbio_filter_consensus_reads_1_2_0/reference_fasta",
                    "type": "File",
                    "inputBinding": {
                        "position": 2,
                        "prefix": "--ref"
                    },
                    "doc": "Reference fasta file.",
                    "secondaryFiles": [
                        ".fai",
                        "^.dict"
                    ]
                },
                {
                    "id": "#fgbio_filter_consensus_reads_1.2.0.cwl/fgbio_filter_consensus_reads_1_2_0/reverse_per_base_tags",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 2,
                        "prefix": "--reverse-per-base-tags"
                    },
                    "doc": "Reverse [complement] per base tags on reverse strand reads."
                },
                {
                    "id": "#fgbio_filter_consensus_reads_1.2.0.cwl/fgbio_filter_consensus_reads_1_2_0/min_reads",
                    "type": [
                        "null",
                        {
                            "type": "array",
                            "items": "int"
                        }
                    ],
                    "inputBinding": {
                        "position": 2,
                        "prefix": "--min-reads",
                        "itemSeparator": " ",
                        "shellQuote": false
                    },
                    "doc": "The minimum number of reads supporting a consensus base/read. (Max 3 values)"
                },
                {
                    "id": "#fgbio_filter_consensus_reads_1.2.0.cwl/fgbio_filter_consensus_reads_1_2_0/max_read_error_rate",
                    "type": [
                        "null",
                        {
                            "type": "array",
                            "items": "float"
                        }
                    ],
                    "inputBinding": {
                        "position": 2,
                        "prefix": "--max-read-error-rate",
                        "itemSeparator": " "
                    },
                    "doc": "The maximum raw-read error rate across the entire consensus read. (Max 3 values)"
                },
                {
                    "id": "#fgbio_filter_consensus_reads_1.2.0.cwl/fgbio_filter_consensus_reads_1_2_0/max_base_error_rate",
                    "type": [
                        "null",
                        {
                            "type": "array",
                            "items": "float"
                        }
                    ],
                    "inputBinding": {
                        "position": 2,
                        "prefix": "--max-base-error-rate",
                        "itemSeparator": " "
                    },
                    "doc": "The maximum error rate for a single consensus base. (Max 3 values)"
                },
                {
                    "id": "#fgbio_filter_consensus_reads_1.2.0.cwl/fgbio_filter_consensus_reads_1_2_0/min_base_quality",
                    "type": "int",
                    "inputBinding": {
                        "position": 2,
                        "prefix": "--min-base-quality"
                    },
                    "doc": "Mask (make N) consensus bases with quality less than this threshold."
                },
                {
                    "id": "#fgbio_filter_consensus_reads_1.2.0.cwl/fgbio_filter_consensus_reads_1_2_0/max_no_call_fraction",
                    "type": [
                        "null",
                        "float"
                    ],
                    "inputBinding": {
                        "position": 2,
                        "prefix": "--max-no-call-fraction"
                    },
                    "doc": "Maximum fraction of no-calls in the read after filtering"
                },
                {
                    "id": "#fgbio_filter_consensus_reads_1.2.0.cwl/fgbio_filter_consensus_reads_1_2_0/min_mean_base_quality",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 2,
                        "prefix": "--min-mean-base-quality"
                    },
                    "doc": "The minimum mean base quality across the consensus read"
                },
                {
                    "id": "#fgbio_filter_consensus_reads_1.2.0.cwl/fgbio_filter_consensus_reads_1_2_0/require_single_strand_agreement",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 2,
                        "prefix": "--require-single-strand-agreement"
                    },
                    "doc": "Mask (make N) consensus bases where the AB and BA consensus reads disagree (for duplex-sequencing only)."
                },
                {
                    "id": "#fgbio_filter_consensus_reads_1.2.0.cwl/fgbio_filter_consensus_reads_1_2_0/temporary_directory",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "Default value: null."
                },
                {
                    "id": "#fgbio_filter_consensus_reads_1.2.0.cwl/fgbio_filter_consensus_reads_1_2_0/async_io",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "separate": false,
                        "prefix": "--async-io="
                    },
                    "doc": "'Use asynchronous I/O where possible, e.g. for SAM and BAM files [=true|false].'"
                }
            ],
            "doc": "Filters consensus reads generated by CallMolecularConsensusReads or CallDuplexConsensusReads. Two kinds of filtering are performed:\n\n1. Masking/filtering of individual bases in reads\n2. Filtering out of reads (i.e. not writing them to the output file)\n\nBase-level filtering/masking is only applied if per-base tags are present (see CallDuplexConsensusReads and CallMolecularConsensusReads for descriptions of these tags). Read-level filtering is always applied. When filtering reads, secondary alignments and supplementary records may be removed independently if they fail one or more filters; if either R1 or R2 primary alignments fail a filter then all records for the template will be filtered out.\n\nThe filters applied are as follows:\n\n1. Reads with fewer than min-reads contributing reads are filtered out\n2. Reads with an average consensus error rate higher than max-read-error-rate are filtered out\n3. Reads with mean base quality of the consensus read, prior to any masking, less than min-mean-base-quality are filtered out (if specified)\n4. Bases with quality scores below min-base-quality are masked to Ns\n5. Bases with fewer than min-reads contributing raw reads are masked to Ns\n6. Bases with a consensus error rate (defined as the fraction of contributing reads that voted for a different base than the consensus call) higher than max-base-error-rate are masked to Ns\n7. For duplex reads, if require-single-strand-agreement is provided, masks to Ns any bases where the base was observed in both single-strand consensus reads and the two reads did not agree\n8. Reads with a proportion of Ns higher than max-no-call-fraction after per-base filtering are filtered out",
            "label": "fgbio_filter_consensus_reads_1.2.0",
            "arguments": [
                {
                    "position": 0,
                    "valueFrom": "${\n  if(inputs.memory_per_job && inputs.memory_overhead) {\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if (inputs.memory_per_job && !inputs.memory_overhead){\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if(!inputs.memory_per_job && inputs.memory_overhead){\n    return \"-Xmx12G\"\n  }\n  else {\n      return \"-Xmx12G\"\n  }\n}"
                },
                {
                    "position": 0,
                    "valueFrom": "-XX:-UseGCOverheadLimit"
                },
                {
                    "position": 1,
                    "valueFrom": "FilterConsensusReads"
                },
                {
                    "position": 0,
                    "prefix": "--tmp-dir=",
                    "separate": false,
                    "valueFrom": "${\n    if(inputs.temporary_directory)\n        return inputs.temporary_directory;\n      return runtime.tmpdir\n}"
                },
                {
                    "position": 2,
                    "prefix": "--output",
                    "shellQuote": false,
                    "valueFrom": "${\n    if(inputs.output_file_name)\n        return inputs.output_file_name;\n      return  inputs.input.basename.replace(/.bam/,'_filtered.bam');\n}"
                }
            ],
            "requirements": [
                {
                    "class": "ShellCommandRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "ramMin": 16000,
                    "coresMin": 2
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/fgbio:1.2.0"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:shahr2@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Ronak Shah"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:shahr2@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Ronak Shah"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "fgbio FilterConsensusReads",
                    "http://usefulinc.com/ns/doap#revision": "1.2.0"
                }
            ],
            "outputs": [
                {
                    "id": "#fgbio_filter_consensus_reads_1.2.0.cwl/fgbio_filter_consensus_reads_1_2_0/fgbio_filter_consensus_reads_bam",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_file_name)\n        return inputs.output_file_name;\n    return  inputs.input.basename.replace(/.bam/,'_filtered.bam');\n}"
                    },
                    "secondaryFiles": [
                        "^.bai"
                    ]
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#fgbio_postprocessing_simplex_filter_0.1.8.cwl",
            "baseCommand": [
                "simplex_filter"
            ],
            "inputs": [
                {
                    "id": "#fgbio_postprocessing_simplex_filter_0.1.8.cwl/fgbio_postprocessing_simplex_filter_0.1.8/input_bam",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--input_bam"
                    },
                    "doc": "Input file (bam or sam).  Required.",
                    "secondaryFiles": [
                        "^.bai"
                    ]
                },
                {
                    "id": "#fgbio_postprocessing_simplex_filter_0.1.8.cwl/fgbio_postprocessing_simplex_filter_0.1.8/output_file_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--output_filename"
                    },
                    "doc": "Output file (bam or sam)."
                },
                {
                    "id": "#fgbio_postprocessing_simplex_filter_0.1.8.cwl/fgbio_postprocessing_simplex_filter_0.1.8/min_simplex_reads",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--min_simplex_reads"
                    },
                    "doc": "Minimum number of simplex reads to pass filter for consensus reads"
                }
            ],
            "outputs": [
                {
                    "id": "#fgbio_postprocessing_simplex_filter_0.1.8.cwl/fgbio_postprocessing_simplex_filter_0.1.8/fgbio_postprocessing_simplex_bam",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if (inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input_bam.basename.replace(/.bam$/,'_simplex.bam')\n    }\n}"
                    },
                    "secondaryFiles": [
                        "^.bai"
                    ]
                }
            ],
            "label": "fgbio_postprocessing_simplex_filter_0.1.8",
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 16000,
                    "coresMin": 2
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/fgbio_postprocessing:0.2.1"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:johnsoni@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Ian Johnson"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:johnsoni@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Ian Johnson"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "fgbio_postprocessing",
                    "http://usefulinc.com/ns/doap#revision": "0.1.8"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl",
            "baseCommand": [
                "gatk",
                "CollectAlignmentSummaryMetrics"
            ],
            "inputs": [
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/input",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-I"
                    },
                    "doc": "Input file (bam or sam).  Required."
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/output_file_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "File to write the output to.  Required."
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/reference",
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-R"
                    },
                    "doc": "Reference sequence file. Note that while this argument is not required, without it only a small subset of the metrics will be calculated. Note also that if a reference sequence is provided, it must be accompanied by a sequence dictionary.  Default value: null.",
                    "secondaryFiles": [
                        "^.fasta.fai",
                        "^.dict"
                    ]
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/adaptor_sequence",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--ADAPTER_SEQUENCE"
                    },
                    "doc": "List of adapter sequences to use when processing the alignment metrics.  This argument may be specified 0 or more times. Default value: [AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTCTTCCGATCT, AGATCGGAAGAGCTCGTATGCCGTCTTCTGCTTG, AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTCTTCCGATCT, AGATCGGAAGAGCGGTTCAGCAGGAATGCCGAGACCGATCTCGTATGCCGTCTTCTGCTTG, AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTCTTCCGATCT, AGATCGGAAGAGCACACGTCTGAACTCCAGTCACNNNNNNNNATCTCGTATGCCGTCTTCTGCTTG]."
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/metrics_acciumulation_level",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--METRIC_ACCUMULATION_LEVEL"
                    },
                    "doc": "The level(s) at which to accumulate metrics. Default value: [ALL_READS]. This option can be set to 'null' to clear the default value. Possible values: {ALL_READS, SAMPLE, LIBRARY, READ_GROUP} This option may be specified 0 or more times. This option can be set to 'null' to clear the default list."
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/expected_pair_orientations",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--EXPECTED_PAIR_ORIENTATIONS"
                    },
                    "doc": "Paired-end reads that do not have this expected orientation will be considered chimeric. This argument may be specified 0 or more times. Default value: [FR]. Possible values: {FR, RF, TANDEM}"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/is_bisulfite_sequenced",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--IS_BISULFITE_SEQUENCED"
                    },
                    "doc": "Whether the SAM or BAM file consists of bisulfite sequenced reads.  Default value: false. Possible values: {true, false}"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/max_insert_size",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--MAX_INSERT_SIZE"
                    },
                    "doc": "Paired-end reads above this insert size will be considered chimeric along with inter-chromosomal pairs.  Default value: 100000."
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/validation_stringency",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--VALIDATION_STRINGENCY"
                    },
                    "doc": "Validation stringency for all SAM files read by this program.  Setting stringency to SILENT can improve performance when processing a BAM file in which variable-length data (read, qualities, tags) do not otherwise need to be decoded.  Default value: STRICT. This option can be set to 'null' to clear the default value. Possible values: {STRICT,LENIENT, SILENT}"
                },
                {
                    "default": true,
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/assume_sorted",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--ASSUME_SORTED"
                    },
                    "doc": "If true (default), then the sort order in the header file will be ignored.  Default value: true. This option can be set to 'null' to clear the default value. Possible values: {true, false}"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/stop_after",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--STOP_AFTER"
                    },
                    "doc": "Stop after processing N reads, mainly for debugging. Default value: 0. This option can be set to 'null' to clear the default value."
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/create_index",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--CREATE_INDEX"
                    },
                    "doc": "Whether to create a BAM index when writing a coordinate-sorted BAM file.  Default value: false. Possible values: {true, false}"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/create_md5_file",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--CREATE_MD5_FILE"
                    },
                    "doc": "Whether to create an MD5 digest for any BAM or FASTQ files created.    Default value: false. Possible values: {true, false}"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/use_jdk_deflater",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--USE_JDK_DEFLATER"
                    },
                    "doc": "Use the JDK Deflater instead of the Intel Deflater for writing compressed output"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/use_jdk_inflater",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--USE_JDK_INFLATER"
                    },
                    "doc": "Use the JDK Inflater instead of the Intel Inflater for reading compressed input"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/temporary_directory",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "Default value: null. This option may be specified 0 or more times."
                }
            ],
            "outputs": [
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/gatk_collect_alignment_summary_metrics_txt",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if (inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_alignment_summary_metrics.txt')\n    }\n}"
                    }
                }
            ],
            "label": "GATK-CollectAlignmentSummaryMetrics",
            "arguments": [
                {
                    "position": 0,
                    "prefix": "--java-options",
                    "valueFrom": "${\n  if(inputs.memory_per_job && inputs.memory_overhead) {\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if (inputs.memory_per_job && !inputs.memory_overhead){\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if(!inputs.memory_per_job && inputs.memory_overhead){\n    return \"-Xmx15G\"\n  }\n  else {\n      return \"-Xmx15G\"\n  }\n}"
                },
                {
                    "position": 0,
                    "prefix": "--TMP_DIR",
                    "valueFrom": "${\n    if(inputs.temporary_directory)\n        return inputs.temporary_directory;\n      return runtime.tmpdir\n}"
                },
                {
                    "position": 0,
                    "prefix": "-O",
                    "valueFrom": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_alignment_summary_metrics.txt')\n    }\n}"
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 32000,
                    "coresMin": 1
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/gatk:4.1.8.0"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charles Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charles Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "gatk4",
                    "http://usefulinc.com/ns/doap#revision": "4.1.8.0"
                }
            ]
        },
        {
            "class": "Workflow",
            "id": "#main",
            "label": "fgbio_separate_bams",
            "inputs": [
                {
                    "id": "#main/reference_fasta",
                    "type": "File",
                    "secondaryFiles": [
                        ".fai",
                        "^.dict"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 853.8671875
                },
                {
                    "id": "#main/input",
                    "type": "File",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 3201.7734375
                },
                {
                    "id": "#main/reverse_per_base_tags_simplex_duplex",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 426.9375
                },
                {
                    "id": "#main/require_single_strand_agreement_simplex_duplex",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 640.40625
                },
                {
                    "id": "#main/output_file_name_simplex_duplex",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 960.5859375
                },
                {
                    "id": "#main/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1494.1796875
                },
                {
                    "id": "#main/min_reads_simplex_duplex",
                    "type": {
                        "type": "array",
                        "items": "int"
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1707.6171875
                },
                {
                    "id": "#main/min_mean_base_quality_simplex_duplex",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1921.0625
                },
                {
                    "id": "#main/max_base_error_rate_simplex_duplex",
                    "type": [
                        "null",
                        {
                            "type": "array",
                            "items": "float"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2988.3359375
                },
                {
                    "id": "#main/max_no_call_fraction_simplex_duplex",
                    "type": [
                        "null",
                        "float"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2774.8984375
                },
                {
                    "id": "#main/min_base_quality_simplex_duplex",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2134.53125
                },
                {
                    "id": "#main/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2348
                },
                {
                    "id": "#main/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2454.734375
                },
                {
                    "id": "#main/max_read_error_rate_simplex_duplex",
                    "type": [
                        "null",
                        {
                            "type": "array",
                            "items": "float"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2561.4609375
                },
                {
                    "id": "#main/reverse_per_base_tags_duplex",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 533.671875
                },
                {
                    "id": "#main/require_single_strand_agreement_duplex",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 747.140625
                },
                {
                    "id": "#main/output_file_name_duplex",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1387.4609375
                },
                {
                    "id": "#main/min_reads_duplex",
                    "type": {
                        "type": "array",
                        "items": "int"
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1814.3359375
                },
                {
                    "id": "#main/min_mean_base_quality_duplex",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2027.796875
                },
                {
                    "id": "#main/min_base_quality_duplex",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2241.265625
                },
                {
                    "id": "#main/max_read_error_rate_duplex",
                    "type": [
                        "null",
                        {
                            "type": "array",
                            "items": "float"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2668.1796875
                },
                {
                    "id": "#main/max_no_call_fraction_duplex",
                    "type": [
                        "null",
                        "float"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2881.6171875
                },
                {
                    "id": "#main/max_base_error_rate_duplex",
                    "type": [
                        "null",
                        {
                            "type": "array",
                            "items": "float"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 3095.0546875
                },
                {
                    "id": "#main/validation_stringency",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 0
                },
                {
                    "id": "#main/use_jdk_inflater",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 106.734375
                },
                {
                    "id": "#main/use_jdk_deflater",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 213.46875
                },
                {
                    "id": "#main/output_file_name_duplex_aln_metrics",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1280.7421875
                },
                {
                    "id": "#main/create_index",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 454.671875,
                    "https://www.sevenbridges.com/y": 1805.625
                },
                {
                    "id": "#main/assume_sorted",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 454.671875,
                    "https://www.sevenbridges.com/y": 1912.34375
                },
                {
                    "id": "#main/output_file_name_simplex_aln_metrics",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1067.3046875
                },
                {
                    "id": "#main/output_file_name_simpex",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1174.0234375
                },
                {
                    "id": "#main/min_simplex_reads",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1600.8984375
                },
                {
                    "id": "#main/temporary_directory",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 320.203125
                },
                {
                    "id": "#main/async_io",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 3308.5
                }
            ],
            "outputs": [
                {
                    "id": "#main/fgbio_filter_consensus_reads_duplex_bam",
                    "outputSource": [
                        "#main/fgbio_filter_consensus_reads_1_2_0_duplex/fgbio_filter_consensus_reads_bam"
                    ],
                    "type": "File",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/x": 1072.9705810546875,
                    "https://www.sevenbridges.com/y": 1828.3515625
                },
                {
                    "id": "#main/fgbio_postprocessing_simplex_bam",
                    "outputSource": [
                        "#main/fgbio_postprocessing_simplex_filter_0_1_8/fgbio_postprocessing_simplex_bam"
                    ],
                    "type": "File",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/x": 1616.9268798828125,
                    "https://www.sevenbridges.com/y": 1809.984375
                },
                {
                    "id": "#main/gatk_collect_alignment_summary_metrics_txt_duplex",
                    "outputSource": [
                        "#main/gatk_collect_alignment_summary_metrics_4.1.8.0_duplex/gatk_collect_alignment_summary_metrics_txt"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 1616.9268798828125,
                    "https://www.sevenbridges.com/y": 1498.515625
                },
                {
                    "id": "#main/fgbio_filter_consensus_reads_simplex_duplex_bam",
                    "outputSource": [
                        "#main/fgbio_filter_consensus_reads_1_2_1_simplex_duplex/fgbio_filter_consensus_reads_bam"
                    ],
                    "type": "File",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/x": 1072.9705810546875,
                    "https://www.sevenbridges.com/y": 1721.6171875
                },
                {
                    "id": "#main/gatk_collect_alignment_summary_metrics_txt_simplex",
                    "outputSource": [
                        "#main/gatk_collect_alignment_summary_metrics_4.1.8.0_simplex/gatk_collect_alignment_summary_metrics_txt"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 2134.5888671875,
                    "https://www.sevenbridges.com/y": 1654.25
                }
            ],
            "steps": [
                {
                    "id": "#main/fgbio_filter_consensus_reads_1_2_0_duplex",
                    "in": [
                        {
                            "id": "#main/fgbio_filter_consensus_reads_1_2_0_duplex/memory_overhead",
                            "source": "#main/memory_overhead"
                        },
                        {
                            "id": "#main/fgbio_filter_consensus_reads_1_2_0_duplex/number_of_threads",
                            "source": "#main/number_of_threads"
                        },
                        {
                            "id": "#main/fgbio_filter_consensus_reads_1_2_0_duplex/input",
                            "source": "#main/input"
                        },
                        {
                            "id": "#main/fgbio_filter_consensus_reads_1_2_0_duplex/output_file_name",
                            "source": "#main/output_file_name_duplex"
                        },
                        {
                            "id": "#main/fgbio_filter_consensus_reads_1_2_0_duplex/reference_fasta",
                            "source": "#main/reference_fasta"
                        },
                        {
                            "id": "#main/fgbio_filter_consensus_reads_1_2_0_duplex/reverse_per_base_tags",
                            "source": "#main/reverse_per_base_tags_duplex"
                        },
                        {
                            "id": "#main/fgbio_filter_consensus_reads_1_2_0_duplex/min_reads",
                            "source": [
                                "#main/min_reads_duplex"
                            ]
                        },
                        {
                            "id": "#main/fgbio_filter_consensus_reads_1_2_0_duplex/max_read_error_rate",
                            "source": [
                                "#main/max_read_error_rate_duplex"
                            ]
                        },
                        {
                            "id": "#main/fgbio_filter_consensus_reads_1_2_0_duplex/max_base_error_rate",
                            "source": [
                                "#main/max_base_error_rate_duplex"
                            ]
                        },
                        {
                            "id": "#main/fgbio_filter_consensus_reads_1_2_0_duplex/min_base_quality",
                            "source": "#main/min_base_quality_duplex"
                        },
                        {
                            "id": "#main/fgbio_filter_consensus_reads_1_2_0_duplex/max_no_call_fraction",
                            "source": "#main/max_no_call_fraction_duplex"
                        },
                        {
                            "id": "#main/fgbio_filter_consensus_reads_1_2_0_duplex/min_mean_base_quality",
                            "source": "#main/min_mean_base_quality_duplex"
                        },
                        {
                            "id": "#main/fgbio_filter_consensus_reads_1_2_0_duplex/require_single_strand_agreement",
                            "source": "#main/require_single_strand_agreement_duplex"
                        },
                        {
                            "id": "#main/fgbio_filter_consensus_reads_1_2_0_duplex/temporary_directory",
                            "source": "#main/temporary_directory"
                        },
                        {
                            "id": "#main/fgbio_filter_consensus_reads_1_2_0_duplex/async_io",
                            "source": "#main/async_io"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/fgbio_filter_consensus_reads_1_2_0_duplex/fgbio_filter_consensus_reads_bam"
                        }
                    ],
                    "run": "#fgbio_filter_consensus_reads_1.2.0.cwl",
                    "label": "fgbio_filter_consensus_reads_1.2.0_duplex",
                    "https://www.sevenbridges.com/x": 454.671875,
                    "https://www.sevenbridges.com/y": 1600.8984375
                },
                {
                    "id": "#main/fgbio_filter_consensus_reads_1_2_1_simplex_duplex",
                    "in": [
                        {
                            "id": "#main/fgbio_filter_consensus_reads_1_2_1_simplex_duplex/memory_per_job",
                            "source": "#main/memory_per_job"
                        },
                        {
                            "id": "#main/fgbio_filter_consensus_reads_1_2_1_simplex_duplex/memory_overhead",
                            "source": "#main/memory_overhead"
                        },
                        {
                            "id": "#main/fgbio_filter_consensus_reads_1_2_1_simplex_duplex/number_of_threads",
                            "source": "#main/number_of_threads"
                        },
                        {
                            "id": "#main/fgbio_filter_consensus_reads_1_2_1_simplex_duplex/input",
                            "source": "#main/input"
                        },
                        {
                            "id": "#main/fgbio_filter_consensus_reads_1_2_1_simplex_duplex/output_file_name",
                            "source": "#main/output_file_name_simplex_duplex"
                        },
                        {
                            "id": "#main/fgbio_filter_consensus_reads_1_2_1_simplex_duplex/reference_fasta",
                            "source": "#main/reference_fasta"
                        },
                        {
                            "id": "#main/fgbio_filter_consensus_reads_1_2_1_simplex_duplex/reverse_per_base_tags",
                            "source": "#main/reverse_per_base_tags_simplex_duplex"
                        },
                        {
                            "id": "#main/fgbio_filter_consensus_reads_1_2_1_simplex_duplex/min_reads",
                            "source": [
                                "#main/min_reads_simplex_duplex"
                            ]
                        },
                        {
                            "id": "#main/fgbio_filter_consensus_reads_1_2_1_simplex_duplex/max_read_error_rate",
                            "source": [
                                "#main/max_read_error_rate_simplex_duplex"
                            ]
                        },
                        {
                            "id": "#main/fgbio_filter_consensus_reads_1_2_1_simplex_duplex/max_base_error_rate",
                            "source": [
                                "#main/max_base_error_rate_simplex_duplex"
                            ]
                        },
                        {
                            "id": "#main/fgbio_filter_consensus_reads_1_2_1_simplex_duplex/min_base_quality",
                            "source": "#main/min_base_quality_simplex_duplex"
                        },
                        {
                            "id": "#main/fgbio_filter_consensus_reads_1_2_1_simplex_duplex/max_no_call_fraction",
                            "source": "#main/max_no_call_fraction_simplex_duplex"
                        },
                        {
                            "id": "#main/fgbio_filter_consensus_reads_1_2_1_simplex_duplex/min_mean_base_quality",
                            "source": "#main/min_mean_base_quality_simplex_duplex"
                        },
                        {
                            "id": "#main/fgbio_filter_consensus_reads_1_2_1_simplex_duplex/require_single_strand_agreement",
                            "source": "#main/require_single_strand_agreement_simplex_duplex"
                        },
                        {
                            "id": "#main/fgbio_filter_consensus_reads_1_2_1_simplex_duplex/temporary_directory",
                            "source": "#main/temporary_directory"
                        },
                        {
                            "id": "#main/fgbio_filter_consensus_reads_1_2_1_simplex_duplex/async_io",
                            "source": "#main/async_io"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/fgbio_filter_consensus_reads_1_2_1_simplex_duplex/fgbio_filter_consensus_reads_bam"
                        }
                    ],
                    "run": "#fgbio_filter_consensus_reads_1.2.0.cwl",
                    "label": "fgbio_filter_consensus_reads_1.2.0_simplex_duplex",
                    "https://www.sevenbridges.com/x": 454.671875,
                    "https://www.sevenbridges.com/y": 1291.1640625
                },
                {
                    "id": "#main/fgbio_postprocessing_simplex_filter_0_1_8",
                    "in": [
                        {
                            "id": "#main/fgbio_postprocessing_simplex_filter_0_1_8/input_bam",
                            "source": "#main/fgbio_filter_consensus_reads_1_2_1_simplex_duplex/fgbio_filter_consensus_reads_bam"
                        },
                        {
                            "id": "#main/fgbio_postprocessing_simplex_filter_0_1_8/output_file_name",
                            "source": "#main/output_file_name_simpex"
                        },
                        {
                            "id": "#main/fgbio_postprocessing_simplex_filter_0_1_8/min_simplex_reads",
                            "source": "#main/min_simplex_reads"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/fgbio_postprocessing_simplex_filter_0_1_8/fgbio_postprocessing_simplex_bam"
                        }
                    ],
                    "run": "#fgbio_postprocessing_simplex_filter_0.1.8.cwl",
                    "label": "fgbio_postprocessing_simplex_filter_0.1.8",
                    "https://www.sevenbridges.com/x": 1072.9705810546875,
                    "https://www.sevenbridges.com/y": 1600.8828125
                },
                {
                    "id": "#main/gatk_collect_alignment_summary_metrics_4.1.8.0_duplex",
                    "in": [
                        {
                            "id": "#main/gatk_collect_alignment_summary_metrics_4.1.8.0_duplex/input",
                            "source": "#main/fgbio_filter_consensus_reads_1_2_0_duplex/fgbio_filter_consensus_reads_bam"
                        },
                        {
                            "id": "#main/gatk_collect_alignment_summary_metrics_4.1.8.0_duplex/output_file_name",
                            "source": "#main/output_file_name_duplex_aln_metrics"
                        },
                        {
                            "id": "#main/gatk_collect_alignment_summary_metrics_4.1.8.0_duplex/reference",
                            "source": "#main/reference_fasta"
                        },
                        {
                            "id": "#main/gatk_collect_alignment_summary_metrics_4.1.8.0_duplex/validation_stringency",
                            "source": "#main/validation_stringency"
                        },
                        {
                            "id": "#main/gatk_collect_alignment_summary_metrics_4.1.8.0_duplex/assume_sorted",
                            "source": "#main/assume_sorted"
                        },
                        {
                            "id": "#main/gatk_collect_alignment_summary_metrics_4.1.8.0_duplex/create_index",
                            "source": "#main/create_index"
                        },
                        {
                            "id": "#main/gatk_collect_alignment_summary_metrics_4.1.8.0_duplex/use_jdk_deflater",
                            "source": "#main/use_jdk_deflater"
                        },
                        {
                            "id": "#main/gatk_collect_alignment_summary_metrics_4.1.8.0_duplex/use_jdk_inflater",
                            "source": "#main/use_jdk_inflater"
                        },
                        {
                            "id": "#main/gatk_collect_alignment_summary_metrics_4.1.8.0_duplex/temporary_directory",
                            "source": "#main/temporary_directory"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/gatk_collect_alignment_summary_metrics_4.1.8.0_duplex/gatk_collect_alignment_summary_metrics_txt"
                        }
                    ],
                    "run": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl",
                    "label": "GATK-CollectAlignmentSummaryMetrics",
                    "https://www.sevenbridges.com/x": 1072.9705810546875,
                    "https://www.sevenbridges.com/y": 1424.1484375
                },
                {
                    "id": "#main/gatk_collect_alignment_summary_metrics_4.1.8.0_simplex",
                    "in": [
                        {
                            "id": "#main/gatk_collect_alignment_summary_metrics_4.1.8.0_simplex/input",
                            "source": "#main/fgbio_postprocessing_simplex_filter_0_1_8/fgbio_postprocessing_simplex_bam"
                        },
                        {
                            "id": "#main/gatk_collect_alignment_summary_metrics_4.1.8.0_simplex/output_file_name",
                            "source": "#main/output_file_name_simplex_aln_metrics"
                        },
                        {
                            "id": "#main/gatk_collect_alignment_summary_metrics_4.1.8.0_simplex/reference",
                            "source": "#main/reference_fasta"
                        },
                        {
                            "id": "#main/gatk_collect_alignment_summary_metrics_4.1.8.0_simplex/validation_stringency",
                            "source": "#main/validation_stringency"
                        },
                        {
                            "id": "#main/gatk_collect_alignment_summary_metrics_4.1.8.0_simplex/assume_sorted",
                            "source": "#main/assume_sorted"
                        },
                        {
                            "id": "#main/gatk_collect_alignment_summary_metrics_4.1.8.0_simplex/create_index",
                            "source": "#main/create_index"
                        },
                        {
                            "id": "#main/gatk_collect_alignment_summary_metrics_4.1.8.0_simplex/use_jdk_deflater",
                            "source": "#main/use_jdk_deflater"
                        },
                        {
                            "id": "#main/gatk_collect_alignment_summary_metrics_4.1.8.0_simplex/use_jdk_inflater",
                            "source": "#main/use_jdk_inflater"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/gatk_collect_alignment_summary_metrics_4.1.8.0_simplex/gatk_collect_alignment_summary_metrics_txt"
                        }
                    ],
                    "run": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl",
                    "label": "GATK-CollectAlignmentSummaryMetrics",
                    "https://www.sevenbridges.com/x": 1616.9268798828125,
                    "https://www.sevenbridges.com/y": 1654.25
                }
            ],
            "requirements": [],
            "https://schema.org/author": [
                {
                    "class": "https://schema.org/Person",
                    "https://schema.org/email": "mailto:shahr2@mskcc.org",
                    "https://schema.org/identifier": "https://orcid.org/0000-0001-9042-6213",
                    "https://schema.org/name": "Ronak Shah"
                }
            ],
            "https://schema.org/citation": "",
            "https://schema.org/codeRepository": "https://github.com/msk-access/cwl_subworkflows/fgbio_separate_bams",
            "https://schema.org/contributor": [
                {
                    "class": "https://schema.org/Person",
                    "https://schema.org/email": "mailto:shahr2@mskcc.org",
                    "https://schema.org/identifier": "https://orcid.org/0000-0001-9042-6213",
                    "https://schema.org/name": "Ronak Shah"
                }
            ],
            "https://schema.org/dateCreated": "2020-06-09",
            "https://schema.org/license": "https://spdx.org/licenses/Apache-2.0"
        }
    ],
    "cwlVersion": "v1.0",
    "$schemas": [
        "http://schema.org/version/latest/schemaorg-current-http.rdf"
    ],
    "$namespaces": {
        "s": "https://schema.org/",
        "sbg": "https://www.sevenbridges.com/"
    }
}
