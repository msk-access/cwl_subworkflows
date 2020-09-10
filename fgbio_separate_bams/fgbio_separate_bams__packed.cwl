{
    "cwlVersion": "v1.0",
    "$schemas": [
        "https://schema.org/version/latest/schema.rdf"
    ],
    "$graph": [
        {
            "baseCommand": [
                "fgbio"
            ],
            "$namespaces": {
                "s": "https://schema.org/",
                "sbg": "https://www.sevenbridges.com/"
            },
            "label": "fgbio_filter_consensus_reads_1.2.0",
            "inputs": [
                {
                    "id": "#fgbio_filter_consensus_reads_1.2.0.cwl/fgbio_filter_consensus_reads_1_2_0/memory_per_job",
                    "doc": "Memory per job in megabytes",
                    "type": "int?"
                },
                {
                    "id": "#fgbio_filter_consensus_reads_1.2.0.cwl/fgbio_filter_consensus_reads_1_2_0/memory_overhead",
                    "doc": "Memory overhead per job in megabytes",
                    "type": "int?"
                },
                {
                    "id": "#fgbio_filter_consensus_reads_1.2.0.cwl/fgbio_filter_consensus_reads_1_2_0/number_of_threads",
                    "type": "int?"
                },
                {
                    "id": "#fgbio_filter_consensus_reads_1.2.0.cwl/fgbio_filter_consensus_reads_1_2_0/input",
                    "doc": "The input SAM or BAM file.",
                    "inputBinding": {
                        "prefix": "--input",
                        "position": 0,
                        "shellQuote": false
                    },
                    "type": "File"
                },
                {
                    "id": "#fgbio_filter_consensus_reads_1.2.0.cwl/fgbio_filter_consensus_reads_1_2_0/output_file_name",
                    "doc": "Output SAM or BAM file to write consensus reads.",
                    "type": "string?"
                },
                {
                    "id": "#fgbio_filter_consensus_reads_1.2.0.cwl/fgbio_filter_consensus_reads_1_2_0/reference_fasta",
                    "doc": "Reference fasta file.",
                    "inputBinding": {
                        "prefix": "--ref",
                        "position": 0
                    },
                    "type": "File",
                    "secondaryFiles": [
                        "^.fai",
                        "^.dict"
                    ]
                },
                {
                    "id": "#fgbio_filter_consensus_reads_1.2.0.cwl/fgbio_filter_consensus_reads_1_2_0/reverse_per_base_tags",
                    "doc": "Reverse [complement] per base tags on reverse strand reads.",
                    "inputBinding": {
                        "prefix": "--reverse-per-base-tags",
                        "position": 0
                    },
                    "type": "boolean?"
                },
                {
                    "id": "#fgbio_filter_consensus_reads_1.2.0.cwl/fgbio_filter_consensus_reads_1_2_0/min_reads",
                    "doc": "The minimum number of reads supporting a consensus base/read. (Max 3 values)",
                    "inputBinding": {
                        "prefix": "--min-reads",
                        "position": 0,
                        "itemSeparator": " "
                    },
                    "type": "int[]?"
                },
                {
                    "id": "#fgbio_filter_consensus_reads_1.2.0.cwl/fgbio_filter_consensus_reads_1_2_0/max_read_error_rate",
                    "doc": "The maximum raw-read error rate across the entire consensus read. (Max 3 values)",
                    "inputBinding": {
                        "prefix": "--max-read-error-rate",
                        "position": 0,
                        "itemSeparator": " "
                    },
                    "type": "float[]?"
                },
                {
                    "id": "#fgbio_filter_consensus_reads_1.2.0.cwl/fgbio_filter_consensus_reads_1_2_0/max_base_error_rate",
                    "doc": "The maximum error rate for a single consensus base. (Max 3 values)",
                    "inputBinding": {
                        "prefix": "--max-base-error-rate",
                        "position": 0,
                        "itemSeparator": " "
                    },
                    "type": "float[]?"
                },
                {
                    "id": "#fgbio_filter_consensus_reads_1.2.0.cwl/fgbio_filter_consensus_reads_1_2_0/min_base_quality",
                    "doc": "Mask (make N) consensus bases with quality less than this threshold.",
                    "inputBinding": {
                        "prefix": "--min-base-quality",
                        "position": 0
                    },
                    "type": "int?"
                },
                {
                    "id": "#fgbio_filter_consensus_reads_1.2.0.cwl/fgbio_filter_consensus_reads_1_2_0/max_no_call_fraction",
                    "doc": "Maximum fraction of no-calls in the read after filtering",
                    "inputBinding": {
                        "prefix": "--max-no-call-fraction",
                        "position": 0
                    },
                    "type": "float?"
                },
                {
                    "id": "#fgbio_filter_consensus_reads_1.2.0.cwl/fgbio_filter_consensus_reads_1_2_0/min_mean_base_quality",
                    "doc": "The minimum mean base quality across the consensus read",
                    "inputBinding": {
                        "prefix": "--min-mean-base-quality",
                        "position": 0
                    },
                    "type": "int?"
                },
                {
                    "id": "#fgbio_filter_consensus_reads_1.2.0.cwl/fgbio_filter_consensus_reads_1_2_0/require_single_strand_agreement",
                    "doc": "Mask (make N) consensus bases where the AB and BA consensus reads disagree (for duplex-sequencing only).",
                    "inputBinding": {
                        "prefix": "--require-single-strand-agreement",
                        "position": 0
                    },
                    "type": "boolean?"
                }
            ],
            "class": "CommandLineTool",
            "requirements": [
                {
                    "class": "ShellCommandRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "ramMin": 4000,
                    "coresMin": 2
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "quay.io/biocontainers/fgbio:1.2.0--0"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "arguments": [
                {
                    "valueFrom": "${\n  if(inputs.memory_per_job && inputs.memory_overhead) {\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if (inputs.memory_per_job && !inputs.memory_overhead){\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if(!inputs.memory_per_job && inputs.memory_overhead){\n    return \"-Xmx10G\"\n  }\n  else {\n      return \"-Xmx10G\"\n  }\n}",
                    "prefix": "",
                    "position": 0
                },
                {
                    "valueFrom": "-XX:-UseGCOverheadLimit",
                    "position": 0
                },
                {
                    "valueFrom": "${ return runtime.tmpdir}",
                    "prefix": "-Djava.io.tmpdir=",
                    "separate": false,
                    "position": 0,
                    "shellQuote": false
                },
                {
                    "valueFrom": "FilterConsensusReads",
                    "prefix": "",
                    "position": 0
                },
                {
                    "valueFrom": "${\n    if(inputs.output_file_name)\n        return inputs.output_file_name;\n      return  inputs.input.basename.replace(/.bam/,'_filtered.bam');\n}",
                    "prefix": "--output",
                    "position": 0,
                    "shellQuote": false
                },
                {
                    "valueFrom": "${\n    if(inputs.number_of_threads)\n        return inputs.number_of_threads\n    return runtime.cores\n}",
                    "prefix": "--threads",
                    "position": 0
                }
            ],
            "doc": "Filters consensus reads generated by CallMolecularConsensusReads or CallDuplexConsensusReads. Two kinds of filtering are performed:\n\n1. Masking/filtering of individual bases in reads\n2. Filtering out of reads (i.e. not writing them to the output file)\n\nBase-level filtering/masking is only applied if per-base tags are present (see CallDuplexConsensusReads and CallMolecularConsensusReads for descriptions of these tags). Read-level filtering is always applied. When filtering reads, secondary alignments and supplementary records may be removed independently if they fail one or more filters; if either R1 or R2 primary alignments fail a filter then all records for the template will be filtered out.\n\nThe filters applied are as follows:\n\n1. Reads with fewer than min-reads contributing reads are filtered out\n2. Reads with an average consensus error rate higher than max-read-error-rate are filtered out\n3. Reads with mean base quality of the consensus read, prior to any masking, less than min-mean-base-quality are filtered out (if specified)\n4. Bases with quality scores below min-base-quality are masked to Ns\n5. Bases with fewer than min-reads contributing raw reads are masked to Ns\n6. Bases with a consensus error rate (defined as the fraction of contributing reads that voted for a different base than the consensus call) higher than max-base-error-rate are masked to Ns\n7. For duplex reads, if require-single-strand-agreement is provided, masks to Ns any bases where the base was observed in both single-strand consensus reads and the two reads did not agree\n8. Reads with a proportion of Ns higher than max-no-call-fraction after per-base filtering are filtered out",
            "id": "#fgbio_filter_consensus_reads_1.2.0.cwl",
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "foaf:Organization",
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:shahr2@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Ronak Shah"
                        }
                    ]
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "foaf:Organization",
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:shahr2@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Ronak Shah"
                        }
                    ]
                }
            ],
            "outputs": [
                {
                    "id": "#fgbio_filter_consensus_reads_1.2.0.cwl/fgbio_filter_consensus_reads_1_2_0/fgbio_filter_consensus_reads_bam",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_file_name)\n        return inputs.output_file_name;\n    return  inputs.input.basename.replace(/.bam/,'_filtered.bam');\n}"
                    },
                    "type": "File"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "http://usefulinc.com/ns/doap#name": "fgbio FilterConsensusReads",
                    "class": "doap:Version",
                    "http://usefulinc.com/ns/doap#revision": "1.2.0"
                }
            ]
        },
        {
            "baseCommand": [
                "simplex_filter"
            ],
            "label": "fgbio_postprocessing_simplex_filter_0.1.8",
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "foaf:Organization",
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:johnsoni@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Ian Johnson"
                        }
                    ]
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "foaf:Organization",
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:johnsoni@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Ian Johnson"
                        }
                    ]
                }
            ],
            "inputs": [
                {
                    "id": "#fgbio_postprocessing_simplex_filter_0.1.8.cwl/fgbio_postprocessing_simplex_filter_0.1.8/input_bam",
                    "doc": "Input file (bam or sam).  Required.",
                    "inputBinding": {
                        "prefix": "--input_bam"
                    },
                    "type": "File",
                    "secondaryFiles": [
                        "^.bai"
                    ]
                },
                {
                    "id": "#fgbio_postprocessing_simplex_filter_0.1.8.cwl/fgbio_postprocessing_simplex_filter_0.1.8/output_file_name",
                    "doc": "Output file (bam or sam).",
                    "inputBinding": {
                        "prefix": "--output_filename"
                    },
                    "type": "string?"
                },
                {
                    "id": "#fgbio_postprocessing_simplex_filter_0.1.8.cwl/fgbio_postprocessing_simplex_filter_0.1.8/min_simplex_reads",
                    "doc": "Minimum number of simplex reads to pass filter for consensus reads",
                    "inputBinding": {
                        "prefix": "--min_simplex_reads"
                    },
                    "type": "int?"
                }
            ],
            "id": "#fgbio_postprocessing_simplex_filter_0.1.8.cwl",
            "class": "CommandLineTool",
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 2000,
                    "coresMin": 1
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "mskaccess/fgbio_postprocessing:0.2.0"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "http://usefulinc.com/ns/doap#name": "fgbio_postprocessing",
                    "class": "doap:Version",
                    "http://usefulinc.com/ns/doap#revision": "0.1.8"
                }
            ],
            "outputs": [
                {
                    "id": "#fgbio_postprocessing_simplex_filter_0.1.8.cwl/fgbio_postprocessing_simplex_filter_0.1.8/fgbio_postprocessing_simplex_bam",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "outputBinding": {
                        "glob": "${\n    if (inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input_bam.basename.replace(/.bam$/,'_simplex.bam')\n    }\n}"
                    },
                    "type": "File"
                }
            ]
        },
        {
            "arguments": [
                {
                    "valueFrom": "${\n  if(inputs.memory_per_job && inputs.memory_overhead) {\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if (inputs.memory_per_job && !inputs.memory_overhead){\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if(!inputs.memory_per_job && inputs.memory_overhead){\n    return \"-Xmx15G\"\n  }\n  else {\n      return \"-Xmx15G\"\n  }\n}",
                    "prefix": "--java-options",
                    "position": 0
                },
                {
                    "valueFrom": ".",
                    "prefix": "--TMP_DIR",
                    "position": 0
                },
                {
                    "valueFrom": "2",
                    "prefix": "--COMPRESSION_LEVEL",
                    "position": 0
                },
                {
                    "valueFrom": "50000",
                    "prefix": "--MAX_RECORDS_IN_RAM",
                    "position": 0
                },
                {
                    "valueFrom": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_alignment_summary_metrics.txt')\n    }\n}",
                    "prefix": "-O",
                    "position": 2
                }
            ],
            "baseCommand": [
                "gatk",
                "CollectAlignmentSummaryMetrics"
            ],
            "label": "GATK-CollectAlignmentSummaryMetrics",
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "foaf:Organization",
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charles Murphy"
                        }
                    ]
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "foaf:Organization",
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charles Murphy"
                        }
                    ]
                }
            ],
            "inputs": [
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/memory_per_job",
                    "doc": "Memory per job in megabytes",
                    "type": "int?"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/memory_overhead",
                    "doc": "Memory overhead per job in megabytes",
                    "type": "int?"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/number_of_threads",
                    "type": "int?"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/input",
                    "doc": "Input file (bam or sam).  Required.",
                    "inputBinding": {
                        "prefix": "-I",
                        "position": 0
                    },
                    "type": "File"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/output_file_name",
                    "doc": "File to write the output to.  Required.",
                    "type": "string?"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/reference",
                    "secondaryFiles": [
                        "^.fasta.fai",
                        "^.dict"
                    ],
                    "inputBinding": {
                        "prefix": "-R",
                        "position": 0
                    },
                    "type": "File?",
                    "doc": "Reference sequence file. Note that while this argument is not required, without it only a small subset of the metrics will be calculated. Note also that if a reference sequence is provided, it must be accompanied by a sequence dictionary.  Default value: null."
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/adaptor_sequence",
                    "doc": "List of adapter sequences to use when processing the alignment metrics.  This argument may be specified 0 or more times. Default value: [AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTCTTCCGATCT, AGATCGGAAGAGCTCGTATGCCGTCTTCTGCTTG, AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTCTTCCGATCT, AGATCGGAAGAGCGGTTCAGCAGGAATGCCGAGACCGATCTCGTATGCCGTCTTCTGCTTG, AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTCTTCCGATCT, AGATCGGAAGAGCACACGTCTGAACTCCAGTCACNNNNNNNNATCTCGTATGCCGTCTTCTGCTTG].",
                    "inputBinding": {
                        "prefix": "--ADAPTER_SEQUENCE",
                        "position": 0
                    },
                    "type": "string?"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/metrics_acciumulation_level",
                    "doc": "The level(s) at which to accumulate metrics. Default value: [ALL_READS]. This option can be set to 'null' to clear the default value. Possible values: {ALL_READS, SAMPLE, LIBRARY, READ_GROUP} This option may be specified 0 or more times. This option can be set to 'null' to clear the default list.",
                    "inputBinding": {
                        "prefix": "--METRIC_ACCUMULATION_LEVEL",
                        "position": 0
                    },
                    "type": "string?"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/expected_pair_orientations",
                    "doc": "Paired-end reads that do not have this expected orientation will be considered chimeric. This argument may be specified 0 or more times. Default value: [FR]. Possible values: {FR, RF, TANDEM}",
                    "inputBinding": {
                        "prefix": "--EXPECTED_PAIR_ORIENTATIONS",
                        "position": 0
                    },
                    "type": "string?"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/is_bisulfite_sequenced",
                    "doc": "Whether the SAM or BAM file consists of bisulfite sequenced reads.  Default value: false. Possible values: {true, false}",
                    "inputBinding": {
                        "prefix": "--IS_BISULFITE_SEQUENCED",
                        "position": 0
                    },
                    "type": "boolean?"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/max_insert_size",
                    "doc": "Paired-end reads above this insert size will be considered chimeric along with inter-chromosomal pairs.  Default value: 100000.",
                    "inputBinding": {
                        "prefix": "--MAX_INSERT_SIZE",
                        "position": 0
                    },
                    "type": "int?"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/validation_stringency",
                    "doc": "Validation stringency for all SAM files read by this program.  Setting stringency to SILENT can improve performance when processing a BAM file in which variable-length data (read, qualities, tags) do not otherwise need to be decoded.  Default value: STRICT. This option can be set to 'null' to clear the default value. Possible values: {STRICT,LENIENT, SILENT}",
                    "inputBinding": {
                        "prefix": "--VALIDATION_STRINGENCY",
                        "position": 0
                    },
                    "type": "string?"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/assume_sorted",
                    "doc": "If true (default), then the sort order in the header file will be ignored.  Default value: true. This option can be set to 'null' to clear the default value. Possible values: {true, false}",
                    "type": "boolean?",
                    "default": true,
                    "inputBinding": {
                        "prefix": "--ASSUME_SORTED",
                        "position": 0
                    }
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/stop_after",
                    "doc": "Stop after processing N reads, mainly for debugging. Default value: 0. This option can be set to 'null' to clear the default value.",
                    "inputBinding": {
                        "prefix": "--STOP_AFTER",
                        "position": 0
                    },
                    "type": "int?"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/create_index",
                    "doc": "Whether to create a BAM index when writing a coordinate-sorted BAM file.  Default value: false. Possible values: {true, false}",
                    "inputBinding": {
                        "prefix": "--CREATE_INDEX",
                        "position": 0
                    },
                    "type": "boolean?"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/create_md5_file",
                    "doc": "Whether to create an MD5 digest for any BAM or FASTQ files created.    Default value: false. Possible values: {true, false}",
                    "inputBinding": {
                        "prefix": "--CREATE_MD5_FILE",
                        "position": 0
                    },
                    "type": "boolean?"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/use_jdk_deflater",
                    "doc": "Use the JDK Deflater instead of the Intel Deflater for writing compressed output",
                    "inputBinding": {
                        "prefix": "--USE_JDK_DEFLATER",
                        "position": 0
                    },
                    "type": "boolean?"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/use_jdk_inflater",
                    "doc": "Use the JDK Inflater instead of the Intel Inflater for reading compressed input",
                    "inputBinding": {
                        "prefix": "--USE_JDK_INFLATER",
                        "position": 0
                    },
                    "type": "boolean?"
                }
            ],
            "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl",
            "class": "CommandLineTool",
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 32000,
                    "coresMin": 1
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "broadinstitute/gatk:4.1.8.0"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "http://usefulinc.com/ns/doap#name": "gatk4",
                    "class": "doap:Version",
                    "http://usefulinc.com/ns/doap#revision": "4.1.8.0"
                }
            ],
            "outputs": [
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/gatk_collect_alignment_summary_metrics_txt",
                    "outputBinding": {
                        "glob": "${\n    if (inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_alignment_summary_metrics.txt')\n    }\n}"
                    },
                    "type": "File"
                }
            ]
        },
        {
            "label": "fgbio_separate_bams",
            "https://schema.org/citation": "",
            "https://schema.org/contributor": [
                {
                    "https://schema.org/email": "mailto:shahr2@mskcc.org",
                    "class": "https://schema.org/Person",
                    "https://schema.org/identifier": "https://orcid.org/0000-0001-9042-6213",
                    "https://schema.org/name": "Ronak Shah"
                }
            ],
            "class": "Workflow",
            "https://schema.org/author": [
                {
                    "https://schema.org/email": "mailto:shahr2@mskcc.org",
                    "class": "https://schema.org/Person",
                    "https://schema.org/identifier": "https://orcid.org/0000-0001-9042-6213",
                    "https://schema.org/name": "Ronak Shah"
                }
            ],
            "requirements": [],
            "https://schema.org/dateCreated": "2020-06-09",
            "inputs": [
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/reference_fasta",
                    "secondaryFiles": [
                        "^.fai",
                        "^.dict"
                    ],
                    "https://www.sevenbridges.com/y": 747.109375,
                    "type": "File"
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/input",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/y": 3094.265625,
                    "type": "File"
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/reverse_per_base_tags_simplex_duplex",
                    "https://www.sevenbridges.com/y": 320.203125,
                    "type": [
                        "null",
                        "boolean"
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/require_single_strand_agreement_simplex_duplex",
                    "https://www.sevenbridges.com/y": 533.671875,
                    "type": [
                        "null",
                        "boolean"
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/output_file_name_simplex_duplex",
                    "https://www.sevenbridges.com/y": 853.78125,
                    "type": [
                        "null",
                        "string"
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/number_of_threads",
                    "https://www.sevenbridges.com/y": 1387.140625,
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/min_reads_simplex_duplex",
                    "https://www.sevenbridges.com/y": 1600.484375,
                    "type": {
                        "items": "int",
                        "type": "array"
                    }
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/min_mean_base_quality_simplex_duplex",
                    "https://www.sevenbridges.com/y": 1813.859375,
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/max_base_error_rate_simplex_duplex",
                    "https://www.sevenbridges.com/y": 2880.921875,
                    "type": [
                        "null",
                        {
                            "items": "float",
                            "type": "array"
                        }
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/max_no_call_fraction_simplex_duplex",
                    "https://www.sevenbridges.com/y": 2667.578125,
                    "type": [
                        "null",
                        "float"
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/min_base_quality_simplex_duplex",
                    "https://www.sevenbridges.com/y": 2027.328125,
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/memory_per_job",
                    "https://www.sevenbridges.com/y": 2240.796875,
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/memory_overhead",
                    "https://www.sevenbridges.com/y": 2347.53125,
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/max_read_error_rate_simplex_duplex",
                    "https://www.sevenbridges.com/y": 2454.234375,
                    "type": [
                        "null",
                        {
                            "items": "float",
                            "type": "array"
                        }
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/reverse_per_base_tags_duplex",
                    "https://www.sevenbridges.com/y": 426.9375,
                    "type": [
                        "null",
                        "boolean"
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/require_single_strand_agreement_duplex",
                    "https://www.sevenbridges.com/y": 640.40625,
                    "type": [
                        "null",
                        "boolean"
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/output_file_name_duplex",
                    "https://www.sevenbridges.com/y": 1280.46875,
                    "type": [
                        "null",
                        "string"
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/min_reads_duplex",
                    "https://www.sevenbridges.com/y": 1707.15625,
                    "type": {
                        "items": "int",
                        "type": "array"
                    }
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/min_mean_base_quality_duplex",
                    "https://www.sevenbridges.com/y": 1920.59375,
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/min_base_quality_duplex",
                    "https://www.sevenbridges.com/y": 2134.0625,
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/max_read_error_rate_duplex",
                    "https://www.sevenbridges.com/y": 2560.90625,
                    "type": [
                        "null",
                        {
                            "items": "float",
                            "type": "array"
                        }
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/max_no_call_fraction_duplex",
                    "https://www.sevenbridges.com/y": 2774.25,
                    "type": [
                        "null",
                        "float"
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/max_base_error_rate_duplex",
                    "https://www.sevenbridges.com/y": 2987.59375,
                    "type": [
                        "null",
                        {
                            "items": "float",
                            "type": "array"
                        }
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/validation_stringency",
                    "https://www.sevenbridges.com/y": 0,
                    "type": [
                        "null",
                        "string"
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/use_jdk_inflater",
                    "https://www.sevenbridges.com/y": 106.734375,
                    "type": [
                        "null",
                        "boolean"
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/use_jdk_deflater",
                    "https://www.sevenbridges.com/y": 213.46875,
                    "type": [
                        "null",
                        "boolean"
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/output_file_name_duplex_aln_metrics",
                    "https://www.sevenbridges.com/y": 1173.796875,
                    "type": [
                        "null",
                        "string"
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 454.71875,
                    "id": "#main/create_index",
                    "https://www.sevenbridges.com/y": 1684.515625,
                    "type": [
                        "null",
                        "boolean"
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 454.71875,
                    "id": "#main/assume_sorted",
                    "https://www.sevenbridges.com/y": 1791.1875,
                    "type": [
                        "null",
                        "boolean"
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/output_file_name_simplex_aln_metrics",
                    "https://www.sevenbridges.com/y": 960.453125,
                    "type": [
                        "null",
                        "string"
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/output_file_name_simpex",
                    "https://www.sevenbridges.com/y": 1067.125,
                    "type": [
                        "null",
                        "string"
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/min_simplex_reads",
                    "https://www.sevenbridges.com/y": 1493.8125,
                    "type": [
                        "null",
                        "int"
                    ]
                }
            ],
            "outputs": [
                {
                    "https://www.sevenbridges.com/x": 1039.097900390625,
                    "outputSource": [
                        "#main/fgbio_filter_consensus_reads_1_2_0_duplex/fgbio_filter_consensus_reads_bam"
                    ],
                    "type": "File",
                    "id": "#main/fgbio_filter_consensus_reads_duplex_bam",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/y": 1721.21875
                },
                {
                    "https://www.sevenbridges.com/x": 1543.551025390625,
                    "id": "#main/fgbio_postprocessing_simplex_bam",
                    "https://www.sevenbridges.com/y": 1749.21875,
                    "outputSource": [
                        "#main/fgbio_postprocessing_simplex_filter_0_1_8/fgbio_postprocessing_simplex_bam"
                    ],
                    "type": "File"
                },
                {
                    "https://www.sevenbridges.com/x": 1543.551025390625,
                    "id": "#main/gatk_collect_alignment_summary_metrics_txt_simplex",
                    "https://www.sevenbridges.com/y": 1345.015625,
                    "outputSource": [
                        "#main/gatk_collect_alignment_summary_metrics_4.1.8.0_duplex/gatk_collect_alignment_summary_metrics_txt"
                    ],
                    "type": "File"
                },
                {
                    "https://www.sevenbridges.com/x": 1543.551025390625,
                    "id": "#main/gatk_collect_alignment_summary_metrics_txt_duplex",
                    "https://www.sevenbridges.com/y": 1451.75,
                    "outputSource": [
                        "#main/gatk_collect_alignment_summary_metrics_4.1.8.0_duplex/gatk_collect_alignment_summary_metrics_txt"
                    ],
                    "type": "File"
                },
                {
                    "https://www.sevenbridges.com/x": 1039.097900390625,
                    "outputSource": [
                        "#main/fgbio_filter_consensus_reads_1_2_1_simplex_duplex/fgbio_filter_consensus_reads_bam"
                    ],
                    "type": "File",
                    "id": "#main/fgbio_filter_consensus_reads_simplex_duplex_bam",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/y": 1614.484375
                }
            ],
            "steps": [
                {
                    "https://www.sevenbridges.com/x": 454.71875,
                    "label": "fgbio_filter_consensus_reads_1.2.0_duplex",
                    "out": [
                        {
                            "id": "#main/fgbio_filter_consensus_reads_1_2_0_duplex/fgbio_filter_consensus_reads_bam"
                        }
                    ],
                    "run": "#fgbio_filter_consensus_reads_1.2.0.cwl",
                    "id": "#main/fgbio_filter_consensus_reads_1_2_0_duplex",
                    "https://www.sevenbridges.com/y": 1493.8125,
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
                        }
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 454.71875,
                    "label": "fgbio_filter_consensus_reads_1.2.0_simplex_duplex",
                    "out": [
                        {
                            "id": "#main/fgbio_filter_consensus_reads_1_2_1_simplex_duplex/fgbio_filter_consensus_reads_bam"
                        }
                    ],
                    "run": "#fgbio_filter_consensus_reads_1.2.0.cwl",
                    "id": "#main/fgbio_filter_consensus_reads_1_2_1_simplex_duplex",
                    "https://www.sevenbridges.com/y": 1212.078125,
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
                        }
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 1039.097900390625,
                    "label": "fgbio_postprocessing_simplex_filter_0.1.8",
                    "out": [
                        {
                            "id": "#main/fgbio_postprocessing_simplex_filter_0_1_8/fgbio_postprocessing_simplex_bam"
                        }
                    ],
                    "run": "#fgbio_postprocessing_simplex_filter_0.1.8.cwl",
                    "id": "#main/fgbio_postprocessing_simplex_filter_0_1_8",
                    "https://www.sevenbridges.com/y": 1493.75,
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
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 1039.097900390625,
                    "label": "GATK-CollectAlignmentSummaryMetrics",
                    "out": [
                        {
                            "id": "#main/gatk_collect_alignment_summary_metrics_4.1.8.0_duplex/gatk_collect_alignment_summary_metrics_txt"
                        }
                    ],
                    "run": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl",
                    "id": "#main/gatk_collect_alignment_summary_metrics_4.1.8.0_duplex",
                    "https://www.sevenbridges.com/y": 1331.015625,
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
                        }
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 1543.551025390625,
                    "label": "GATK-CollectAlignmentSummaryMetrics",
                    "out": [
                        {
                            "id": "#main/gatk_collect_alignment_summary_metrics_4.1.8.0_simplex/gatk_collect_alignment_summary_metrics_txt"
                        }
                    ],
                    "run": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl",
                    "id": "#main/gatk_collect_alignment_summary_metrics_4.1.8.0_simplex",
                    "https://www.sevenbridges.com/y": 1600.484375,
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
                    ]
                }
            ],
            "https://schema.org/license": "https://spdx.org/licenses/Apache-2.0",
            "id": "#main",
            "https://schema.org/codeRepository": "https://github.com/msk-access/cwl_subworkflows/fgbio_separate_bams"
        }
    ]
}