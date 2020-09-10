{
    "cwlVersion": "v1.0",
    "$graph": [
        {
            "id": "#main",
            "steps": [
                {
                    "https://www.sevenbridges.com/x": -63.445003509521484,
                    "id": "#main/gatk_collect_alignment_summary_metrics_4_1_3_0",
                    "run": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl",
                    "https://www.sevenbridges.com/y": -424.1755676269531,
                    "label": "GATK-CollectAlignmentSummaryMetrics",
                    "in": [
                        {
                            "id": "#main/gatk_collect_alignment_summary_metrics_4_1_3_0/input",
                            "source": "#main/input"
                        },
                        {
                            "id": "#main/gatk_collect_alignment_summary_metrics_4_1_3_0/reference",
                            "source": "#main/reference"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/gatk_collect_alignment_summary_metrics_4_1_3_0/alignment_summary_metrics"
                        }
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": -61.321895599365234,
                    "id": "#main/gatk_collect_hs_metrics_4_1_8_0",
                    "run": "#gatk_collect_hs_metrics_4.1.8.0.cwl",
                    "https://www.sevenbridges.com/y": -194.27346801757812,
                    "label": "GATK-CollectHsMetrics",
                    "in": [
                        {
                            "id": "#main/gatk_collect_hs_metrics_4_1_8_0/input",
                            "source": "#main/input"
                        },
                        {
                            "id": "#main/gatk_collect_hs_metrics_4_1_8_0/bait_intervals",
                            "source": "#main/bait_intervals"
                        },
                        {
                            "id": "#main/gatk_collect_hs_metrics_4_1_8_0/target_intervals",
                            "source": "#main/target_intervals"
                        },
                        {
                            "id": "#main/gatk_collect_hs_metrics_4_1_8_0/reference",
                            "source": "#main/reference"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/gatk_collect_hs_metrics_4_1_8_0/hs_metrics"
                        },
                        {
                            "id": "#main/gatk_collect_hs_metrics_4_1_8_0/per_base_coverage_out"
                        },
                        {
                            "id": "#main/gatk_collect_hs_metrics_4_1_8_0/per_target_coverage_out"
                        }
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": -52.185672760009766,
                    "id": "#main/gatk_collect_insert_size_metrics_4_1_8_0",
                    "run": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl",
                    "https://www.sevenbridges.com/y": 62.291622161865234,
                    "label": "GATK-CollectInsertSizeMetrics",
                    "in": [
                        {
                            "id": "#main/gatk_collect_insert_size_metrics_4_1_8_0/input",
                            "source": "#main/input"
                        },
                        {
                            "id": "#main/gatk_collect_insert_size_metrics_4_1_8_0/histogram_file",
                            "default": "histogram.pdf"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/gatk_collect_insert_size_metrics_4_1_8_0/insert_size_metrics"
                        },
                        {
                            "id": "#main/gatk_collect_insert_size_metrics_4_1_8_0/histogram_file_out"
                        }
                    ]
                }
            ],
            "doap:release": [
                {
                    "doap:revision": 1.0,
                    "class": "doap:Version",
                    "doap:name": "bam_qc_stats"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "foaf:member": [
                        {
                            "class": "foaf:Person",
                            "foaf:mbox": "mailto:murphyc4@mskcc.org",
                            "foaf:name": "Charles Murphy"
                        }
                    ],
                    "class": "foaf:Organization",
                    "foaf:name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "requirements": [],
            "outputs": [
                {
                    "https://www.sevenbridges.com/x": 395.9356689453125,
                    "id": "#main/histogram_file_out",
                    "type": "File",
                    "https://www.sevenbridges.com/y": 146.90231323242188,
                    "outputSource": [
                        "#main/gatk_collect_insert_size_metrics_4_1_8_0/histogram_file_out"
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 389.6158752441406,
                    "id": "#main/insert_size_metrics",
                    "type": "File",
                    "https://www.sevenbridges.com/y": 17.978422164916992,
                    "outputSource": [
                        "#main/gatk_collect_insert_size_metrics_4_1_8_0/insert_size_metrics"
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 384.5600280761719,
                    "id": "#main/hs_metrics",
                    "type": "File",
                    "https://www.sevenbridges.com/y": -112.20942687988281,
                    "outputSource": [
                        "#main/gatk_collect_hs_metrics_4_1_8_0/hs_metrics"
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 378.240234375,
                    "id": "#main/per_base_coverage_out",
                    "type": "File",
                    "https://www.sevenbridges.com/y": -244.92520141601562,
                    "outputSource": [
                        "#main/gatk_collect_hs_metrics_4_1_8_0/per_base_coverage_out"
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 371.9204406738281,
                    "id": "#main/per_target_coverage_out",
                    "type": "File",
                    "https://www.sevenbridges.com/y": -373.8490905761719,
                    "outputSource": [
                        "#main/gatk_collect_hs_metrics_4_1_8_0/per_target_coverage_out"
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 373.18438720703125,
                    "id": "#main/alignment_summary_metrics",
                    "type": "File",
                    "https://www.sevenbridges.com/y": -520.4683837890625,
                    "outputSource": [
                        "#main/gatk_collect_alignment_summary_metrics_4_1_3_0/alignment_summary_metrics"
                    ]
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "foaf:member": [
                        {
                            "class": "foaf:Person",
                            "foaf:mbox": "mailto:murphyc4@mskcc.org",
                            "foaf:name": "Charles Murphy"
                        }
                    ],
                    "class": "foaf:Organization",
                    "foaf:name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "$namespaces": {
                "sbg": "https://www.sevenbridges.com/"
            },
            "inputs": [
                {
                    "https://www.sevenbridges.com/x": -496.41986083984375,
                    "id": "#main/input",
                    "type": "File",
                    "https://www.sevenbridges.com/y": -282.843994140625
                },
                {
                    "https://www.sevenbridges.com/x": -490.1000671386719,
                    "id": "#main/target_intervals",
                    "type": "File",
                    "https://www.sevenbridges.com/y": -133.69674682617188
                },
                {
                    "https://www.sevenbridges.com/x": -485.0442199707031,
                    "id": "#main/bait_intervals",
                    "type": "File",
                    "https://www.sevenbridges.com/y": 11.658624649047852
                },
                {
                    "https://www.sevenbridges.com/x": -504.0036315917969,
                    "id": "#main/reference",
                    "type": "File",
                    "https://www.sevenbridges.com/y": -426.9353942871094,
                    "secondaryFiles": [
                        "^.fasta.fai",
                        "^.dict"
                    ]
                }
            ],
            "class": "Workflow",
            "label": "bam_qc_stats"
        },
        {
            "http://usefulinc.com/ns/doap#release": [
                {
                    "http://usefulinc.com/ns/doap#revision": "4.1.8.0",
                    "class": "doap:Version",
                    "http://usefulinc.com/ns/doap#name": "gatk4"
                }
            ],
            "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl",
            "http://purl.org/dc/terms/creator": [
                {
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "http://xmlns.com/foaf/0.1/name": "Charles Murphy",
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center",
                    "class": "foaf:Organization"
                }
            ],
            "arguments": [
                {
                    "prefix": "--java-options",
                    "valueFrom": "${\n  if(inputs.memory_per_job && inputs.memory_overhead) {\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if (inputs.memory_per_job && !inputs.memory_overhead){\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if(!inputs.memory_per_job && inputs.memory_overhead){\n    return \"-Xmx15G\"\n  }\n  else {\n      return \"-Xmx15G\"\n  }\n}",
                    "position": 0
                },
                {
                    "prefix": "--TMP_DIR",
                    "valueFrom": ".",
                    "position": 0
                },
                {
                    "prefix": "--COMPRESSION_LEVEL",
                    "valueFrom": "2",
                    "position": 0
                },
                {
                    "prefix": "--MAX_RECORDS_IN_RAM",
                    "valueFrom": "50000",
                    "position": 0
                },
                {
                    "prefix": "-O",
                    "valueFrom": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_alignment_summary_metrics.txt')\n    }\n}",
                    "position": 2
                }
            ],
            "baseCommand": [
                "gatk",
                "CollectAlignmentSummaryMetrics"
            ],
            "requirements": [
                {
                    "coresMin": 1,
                    "class": "ResourceRequirement",
                    "ramMin": 32000
                },
                {
                    "dockerPull": "broadinstitute/gatk:4.1.8.0",
                    "class": "DockerRequirement"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "outputs": [
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/alignment_summary_metrics",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if (inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_alignment_summary_metrics.txt')\n    }\n}"
                    }
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "http://xmlns.com/foaf/0.1/name": "Charles Murphy",
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center",
                    "class": "foaf:Organization"
                }
            ],
            "inputs": [
                {
                    "doc": "Memory per job in megabytes",
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/memory_per_job",
                    "type": "int?"
                },
                {
                    "doc": "Memory overhead per job in megabytes",
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/memory_overhead",
                    "type": "int?"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/number_of_threads",
                    "type": "int?"
                },
                {
                    "inputBinding": {
                        "prefix": "-I",
                        "position": 0
                    },
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/input",
                    "type": "File",
                    "doc": "Input file (bam or sam).  Required."
                },
                {
                    "doc": "File to write the output to.  Required.",
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/output_file_name",
                    "type": "string?"
                },
                {
                    "inputBinding": {
                        "prefix": "-R",
                        "position": 0
                    },
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/reference",
                    "type": "File?",
                    "doc": "Reference sequence file. Note that while this argument is not required, without it only a small subset of the metrics will be calculated. Note also that if a reference sequence is provided, it must be accompanied by a sequence dictionary.  Default value: null.",
                    "secondaryFiles": [
                        "^.fasta.fai",
                        "^.dict"
                    ]
                },
                {
                    "inputBinding": {
                        "prefix": "--ADAPTER_SEQUENCE",
                        "position": 0
                    },
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/adaptor_sequence",
                    "type": "string?",
                    "doc": "List of adapter sequences to use when processing the alignment metrics.  This argument may be specified 0 or more times. Default value: [AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTCTTCCGATCT, AGATCGGAAGAGCTCGTATGCCGTCTTCTGCTTG, AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTCTTCCGATCT, AGATCGGAAGAGCGGTTCAGCAGGAATGCCGAGACCGATCTCGTATGCCGTCTTCTGCTTG, AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTCTTCCGATCT, AGATCGGAAGAGCACACGTCTGAACTCCAGTCACNNNNNNNNATCTCGTATGCCGTCTTCTGCTTG]."
                },
                {
                    "inputBinding": {
                        "prefix": "--METRIC_ACCUMULATION_LEVEL",
                        "position": 0
                    },
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/metrics_acciumulation_level",
                    "type": "string?",
                    "doc": "The level(s) at which to accumulate metrics. Default value: [ALL_READS]. This option can be set to 'null' to clear the default value. Possible values: {ALL_READS, SAMPLE, LIBRARY, READ_GROUP} This option may be specified 0 or more times. This option can be set to 'null' to clear the default list."
                },
                {
                    "inputBinding": {
                        "prefix": "--EXPECTED_PAIR_ORIENTATIONS",
                        "position": 0
                    },
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/expected_pair_orientations",
                    "type": "string?",
                    "doc": "Paired-end reads that do not have this expected orientation will be considered chimeric. This argument may be specified 0 or more times. Default value: [FR]. Possible values: {FR, RF, TANDEM}"
                },
                {
                    "inputBinding": {
                        "prefix": "--IS_BISULFITE_SEQUENCED",
                        "position": 0
                    },
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/is_bisulfite_sequenced",
                    "type": "boolean?",
                    "doc": "Whether the SAM or BAM file consists of bisulfite sequenced reads.  Default value: false. Possible values: {true, false}"
                },
                {
                    "inputBinding": {
                        "prefix": "--MAX_INSERT_SIZE",
                        "position": 0
                    },
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/max_insert_size",
                    "type": "int?",
                    "doc": "Paired-end reads above this insert size will be considered chimeric along with inter-chromosomal pairs.  Default value: 100000."
                },
                {
                    "inputBinding": {
                        "prefix": "--VALIDATION_STRINGENCY",
                        "position": 0
                    },
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/validation_stringency",
                    "type": "string?",
                    "doc": "Validation stringency for all SAM files read by this program.  Setting stringency to SILENT can improve performance when processing a BAM file in which variable-length data (read, qualities, tags) do not otherwise need to be decoded.  Default value: STRICT. This option can be set to 'null' to clear the default value. Possible values: {STRICT,LENIENT, SILENT}"
                },
                {
                    "inputBinding": {
                        "prefix": "--ASSUME_SORTED",
                        "position": 0
                    },
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/assume_sorted",
                    "type": "boolean?",
                    "doc": "If true (default), then the sort order in the header file will be ignored.  Default value: true. This option can be set to 'null' to clear the default value. Possible values: {true, false}",
                    "default": true
                },
                {
                    "inputBinding": {
                        "prefix": "--STOP_AFTER",
                        "position": 0
                    },
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/stop_after",
                    "type": "int?",
                    "doc": "Stop after processing N reads, mainly for debugging. Default value: 0. This option can be set to 'null' to clear the default value."
                },
                {
                    "inputBinding": {
                        "prefix": "--CREATE_INDEX",
                        "position": 0
                    },
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/create_index",
                    "type": "boolean?",
                    "doc": "Whether to create a BAM index when writing a coordinate-sorted BAM file.  Default value: false. Possible values: {true, false}"
                },
                {
                    "inputBinding": {
                        "prefix": "--CREATE_MD5_FILE",
                        "position": 0
                    },
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/create_md5_file",
                    "type": "boolean?",
                    "doc": "Whether to create an MD5 digest for any BAM or FASTQ files created.    Default value: false. Possible values: {true, false}"
                }
            ],
            "class": "CommandLineTool",
            "label": "GATK-CollectAlignmentSummaryMetrics"
        },
        {
            "http://usefulinc.com/ns/doap#release": [
                {
                    "http://usefulinc.com/ns/doap#revision": "4.1.8.0",
                    "class": "doap:Version",
                    "http://usefulinc.com/ns/doap#name": "gatk4"
                }
            ],
            "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl",
            "http://purl.org/dc/terms/creator": [
                {
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "http://xmlns.com/foaf/0.1/name": "Charles Murphy",
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center",
                    "class": "foaf:Organization"
                }
            ],
            "arguments": [
                {
                    "prefix": "--java-options",
                    "valueFrom": "${\n  if(inputs.memory_per_job && inputs.memory_overhead) {\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if (inputs.memory_per_job && !inputs.memory_overhead){\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if(!inputs.memory_per_job && inputs.memory_overhead){\n    return \"-Xmx15G\"\n  }\n  else {\n      return \"-Xmx15G\"\n  }\n}",
                    "position": 0
                },
                {
                    "prefix": "--TMP_DIR",
                    "valueFrom": ".",
                    "position": 0
                },
                {
                    "prefix": "--COMPRESSION_LEVEL",
                    "valueFrom": "2",
                    "position": 0
                },
                {
                    "prefix": "--MAX_RECORDS_IN_RAM",
                    "valueFrom": "50000",
                    "position": 0
                },
                {
                    "prefix": "-O",
                    "valueFrom": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_hs_metrics.txt')\n    }\n}",
                    "position": 2
                },
                {
                    "prefix": "--PER_TARGET_COVERAGE",
                    "valueFrom": "${\n    if(inputs.per_target_coverage){\n        return inputs.per_target_coverage\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_per_target_coverage.txt')\n    }\n}",
                    "position": 2
                },
                {
                    "prefix": "--PER_BASE_COVERAGE",
                    "valueFrom": "${\n    if(inputs.per_base_coverage){\n        return inputs.per_base_coverage\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_per_base_coverage.txt')\n    }\n}",
                    "position": 2
                }
            ],
            "baseCommand": [
                "gatk",
                "CollectHsMetrics"
            ],
            "requirements": [
                {
                    "coresMin": 1,
                    "class": "ResourceRequirement",
                    "ramMin": 32000
                },
                {
                    "dockerPull": "broadinstitute/gatk:4.1.8.0",
                    "class": "DockerRequirement"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "outputs": [
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/hs_metrics",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_hs_metrics.txt')\n    }\n}"
                    }
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/per_base_coverage_out",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.per_base_coverage){\n        return inputs.per_base_coverage\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_per_base_coverage.txt')\n    }\n}"
                    }
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/per_target_coverage_out",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.per_target_coverage){\n        return inputs.per_target_coverage\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_per_target_coverage.txt')\n    }\n}"
                    }
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "http://xmlns.com/foaf/0.1/name": "Charles Murphy",
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center",
                    "class": "foaf:Organization"
                }
            ],
            "inputs": [
                {
                    "inputBinding": {
                        "prefix": "-I",
                        "position": 0
                    },
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/input",
                    "type": "File",
                    "doc": "An aligned SAM or BAM file.  Required."
                },
                {
                    "inputBinding": {
                        "prefix": "--BAIT_INTERVALS",
                        "position": 0
                    },
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/bait_intervals",
                    "type": "File",
                    "doc": "An interval list file that contains the locations of the baits used.  This argument must be specified at least once. Required."
                },
                {
                    "inputBinding": {
                        "prefix": "--TARGET_INTERVALS",
                        "position": 0
                    },
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/target_intervals",
                    "type": "File",
                    "doc": "An interval list file that contains the locations of the targets.  This argument must be specified at least once. Required."
                },
                {
                    "doc": "The output file to write the metrics to.  Required.",
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/output_file_name",
                    "type": "string?"
                },
                {
                    "doc": "An optional file to output per base coverage information to. The per-base file contains one line per target base and can grow very large. It is not recommended for use with large target sets.  Default value: null.",
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/per_base_coverage",
                    "type": "string?"
                },
                {
                    "doc": "An optional file to output per target coverage information to.  Default value: null.",
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/per_target_coverage",
                    "type": "string?"
                },
                {
                    "inputBinding": {
                        "prefix": "--THEORETICAL_SENSITIVITY_OUTPUT",
                        "position": 0
                    },
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/theoretical_sensitivity_output",
                    "type": "string?",
                    "doc": "Output for Theoretical Sensitivity metrics where the allele fractions are provided by the ALLELE_FRACTION argument.  Default value: null."
                },
                {
                    "inputBinding": {
                        "prefix": "--ALLELE_FRACTION",
                        "position": 0
                    },
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/allele_fraction",
                    "type": "float?",
                    "doc": "Allele fraction for which to calculate theoretical sensitivity.  This argument may be specified 0 or more times. Default value: [0.001, 0.005, 0.01, 0.02, 0.05, 0.1, 0.2, 0.3, 0.5]."
                },
                {
                    "inputBinding": {
                        "prefix": "--BAIT_SET_NAME",
                        "position": 0
                    },
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/bait_set_name",
                    "type": "string?",
                    "doc": "Bait set name. If not provided it is inferred from the filename of the bait intervals. Default value: null."
                },
                {
                    "inputBinding": {
                        "prefix": "--CLIP_OVERLAPPING_READS",
                        "position": 0
                    },
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/clip_overlapping_reads",
                    "type": "boolean?",
                    "doc": "True if we are to clip overlapping reads, false otherwise.  Default value: true. Possible values: {true, false}"
                },
                {
                    "inputBinding": {
                        "prefix": "--COVERAGE_CAP",
                        "position": 0
                    },
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/coverage_cap",
                    "type": "int?",
                    "doc": "Parameter to set a max coverage limit for Theoretical Sensitivity calculations. Default is 200.  Default value: 200."
                },
                {
                    "inputBinding": {
                        "prefix": "--INCLUDE_INDELS",
                        "position": 0
                    },
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/include_indels",
                    "type": "boolean?",
                    "doc": "If true count inserted bases as on target and deleted bases as covered by a read.  Default value: false. Possible values: {true, false}"
                },
                {
                    "inputBinding": {
                        "prefix": "--MINIMUM_BASE_QUALITY",
                        "position": 0
                    },
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/minimum_base_quality",
                    "type": "int?",
                    "doc": "Minimum base quality for a base to contribute coverage.  Default value: 20."
                },
                {
                    "inputBinding": {
                        "prefix": "--MINIMUM_MAPPING_QUALITY",
                        "position": 0
                    },
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/minimum_mapping_quality",
                    "type": "int?",
                    "doc": "Minimum mapping quality for a read to contribute coverage.  Default value: 20."
                },
                {
                    "inputBinding": {
                        "prefix": "--NEAR_DISTANCE",
                        "position": 0
                    },
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/near_distance",
                    "type": "int?",
                    "doc": "The maximum distance between a read and the nearest probe/bait/amplicon for the read to be considered 'near probe' and included in percent selected.  Default value: 250."
                },
                {
                    "inputBinding": {
                        "prefix": "--SAMPLE_SIZE",
                        "position": 0
                    },
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/sample_size",
                    "type": "int?",
                    "doc": "Sample Size used for Theoretical Het Sensitivity sampling. Default is 10000.  Default value: 10000."
                },
                {
                    "inputBinding": {
                        "prefix": "-R",
                        "position": 0
                    },
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/reference",
                    "type": "File?",
                    "doc": "Reference sequence file. Note that while this argument is not required, without it only a small subset of the metrics will be calculated. Note also that if a reference sequence is provided, it must be accompanied by a sequence dictionary.  Default value: null.",
                    "secondaryFiles": [
                        "^.fasta.fai",
                        "^.dict"
                    ]
                },
                {
                    "inputBinding": {
                        "prefix": "--METRIC_ACCUMULATION_LEVEL",
                        "position": 0
                    },
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/metrics_acciumulation_level",
                    "type": "string?",
                    "doc": "The level(s) at which to accumulate metrics. Default value: [ALL_READS]. This option can be set to 'null' to clear the default value. Possible values: {ALL_READS, SAMPLE, LIBRARY, READ_GROUP} This option may be specified 0 or more times. This option can be set to 'null' to clear the default list."
                },
                {
                    "inputBinding": {
                        "prefix": "--VALIDATION_STRINGENCY",
                        "position": 0
                    },
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/validation_stringency",
                    "type": "string?",
                    "doc": "Validation stringency for all SAM files read by this program.  Setting stringency to SILENT can improve performance when processing a BAM file in which variable-length data (read, qualities, tags) do not otherwise need to be decoded.  Default value: STRICT. This option can be set to 'null' to clear the default value. Possible values: {STRICT,LENIENT, SILENT}"
                },
                {
                    "inputBinding": {
                        "prefix": "--CREATE_INDEX",
                        "position": 0
                    },
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/create_index",
                    "type": "boolean?",
                    "doc": "Whether to create a BAM index when writing a coordinate-sorted BAM file.  Default value: false. Possible values: {true, false}"
                },
                {
                    "inputBinding": {
                        "prefix": "--CREATE_MD5_FILE",
                        "position": 0
                    },
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/create_md5_file",
                    "type": "boolean?",
                    "doc": "Whether to create an MD5 digest for any BAM or FASTQ files created.    Default value: false. Possible values: {true, false}"
                },
                {
                    "doc": "Memory per job in megabytes",
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/memory_per_job",
                    "type": "int?"
                },
                {
                    "doc": "Memory overhead per job in megabytes",
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/memory_overhead",
                    "type": "int?"
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/number_of_threads",
                    "type": "int?"
                }
            ],
            "class": "CommandLineTool",
            "label": "GATK-CollectHsMetrics"
        },
        {
            "http://usefulinc.com/ns/doap#release": [
                {
                    "http://usefulinc.com/ns/doap#revision": "4.1.8.0",
                    "class": "doap:Version",
                    "http://usefulinc.com/ns/doap#name": "gatk4"
                }
            ],
            "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl",
            "http://purl.org/dc/terms/creator": [
                {
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "http://xmlns.com/foaf/0.1/name": "Charles Murphy",
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center",
                    "class": "foaf:Organization"
                }
            ],
            "arguments": [
                {
                    "prefix": "--java-options",
                    "valueFrom": "${\n  if(inputs.memory_per_job && inputs.memory_overhead) {\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if (inputs.memory_per_job && !inputs.memory_overhead){\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if(!inputs.memory_per_job && inputs.memory_overhead){\n    return \"-Xmx15G\"\n  }\n  else {\n      return \"-Xmx15G\"\n  }\n}",
                    "position": 0
                },
                {
                    "prefix": "--TMP_DIR",
                    "valueFrom": ".",
                    "position": 0
                },
                {
                    "prefix": "--COMPRESSION_LEVEL",
                    "valueFrom": "2",
                    "position": 0
                },
                {
                    "prefix": "--MAX_RECORDS_IN_RAM",
                    "valueFrom": "50000",
                    "position": 0
                },
                {
                    "prefix": "-O",
                    "valueFrom": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_insert_size_metrics.txt')\n    }\n}",
                    "position": 2
                },
                {
                    "prefix": "-H",
                    "valueFrom": "${\n    if(inputs.histogram_file){\n        return inputs.histogram_file\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_histogram.pdf')\n    }\n}",
                    "position": 2
                }
            ],
            "baseCommand": [
                "gatk",
                "CollectInsertSizeMetrics"
            ],
            "requirements": [
                {
                    "coresMin": 1,
                    "class": "ResourceRequirement",
                    "ramMin": 32000
                },
                {
                    "dockerPull": "broadinstitute/gatk:4.1.8.0",
                    "class": "DockerRequirement"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "outputs": [
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/insert_size_metrics",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_insert_size_metrics.txt')\n    }\n}"
                    }
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/histogram_file_out",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.histogram_file){\n        return inputs.histogram_file\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_histogram.pdf')\n    }\n}"
                    }
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "http://xmlns.com/foaf/0.1/name": "Charles Murphy",
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center",
                    "class": "foaf:Organization"
                }
            ],
            "inputs": [
                {
                    "doc": "Memory per job in megabytes",
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/memory_per_job",
                    "type": "int?"
                },
                {
                    "doc": "Memory overhead per job in megabytes",
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/memory_overhead",
                    "type": "int?"
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/number_of_threads",
                    "type": "int?"
                },
                {
                    "inputBinding": {
                        "prefix": "-I",
                        "position": 0
                    },
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/input",
                    "type": "File",
                    "doc": "Input file (bam or sam).  Required."
                },
                {
                    "doc": "File to write the output to.  Required.",
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/output_file_name",
                    "type": "string?"
                },
                {
                    "doc": "File to write insert size Histogram chart to.  Required.",
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/histogram_file",
                    "type": "string?"
                },
                {
                    "inputBinding": {
                        "prefix": "--DEVIATIONS",
                        "position": 0
                    },
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/deviations",
                    "type": "float?",
                    "doc": "Generate mean, sd and plots by trimming the data down to MEDIAN + DEVIATIONS*MEDIAN_ABSOLUTE_DEVIATION. This is done because insert size data typically includes enough anomalous values from chimeras and other artifacts to make the mean and sd grossly misleading regarding the real distribution.  Default value: 10.0. This option can be set to 'null' to clear the default value."
                },
                {
                    "inputBinding": {
                        "prefix": "--HISTOGRAM_WIDTH",
                        "position": 0
                    },
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/histogram_width",
                    "type": "int?",
                    "doc": "Explicitly sets the Histogram width, overriding automatic truncation of Histogram tail. Also, when calculating mean and standard deviation, only bins <= Histogram_WIDTH will be included.  Default value: null."
                },
                {
                    "inputBinding": {
                        "prefix": "--MINIMUM_PCT",
                        "position": 0
                    },
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/minimum_pct",
                    "type": "float?",
                    "doc": "When generating the Histogram, discard any data categories (out of FR, TANDEM, RF) that have fewer than this percentage of overall reads. (Range: 0 to 1).  Default value: 0.05. This option can be set to 'null' to clear the default value."
                },
                {
                    "inputBinding": {
                        "prefix": "--METRIC_ACCUMULATION_LEVEL",
                        "position": 0
                    },
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/metrics_acciumulation_level",
                    "type": "string?",
                    "doc": "The level(s) at which to accumulate metrics. Default value: [ALL_READS]. This option can be set to 'null' to clear the default value. Possible values: {ALL_READS, SAMPLE, LIBRARY, READ_GROUP} This option may be specified 0 or more times. This option can be set to 'null' to clear the default list."
                },
                {
                    "inputBinding": {
                        "prefix": "--INCLUDE_DUPLICATES",
                        "position": 0
                    },
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/include_duplicates",
                    "type": "boolean?",
                    "doc": "If true, also include reads marked as duplicates in the insert size histogram.  Default value: false. This option can be set to 'null' to clear the default value. Possible values: {true, false}"
                },
                {
                    "inputBinding": {
                        "prefix": "--VALIDATION_STRINGENCY",
                        "position": 0
                    },
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/validation_stringency",
                    "type": "string?",
                    "doc": "Validation stringency for all SAM files read by this program.  Setting stringency to SILENT can improve performance when processing a BAM file in which variable-length data (read, qualities, tags) do not otherwise need to be decoded.  Default value: STRICT. This option can be set to 'null' to clear the default value. Possible values: {STRICT,LENIENT, SILENT}"
                },
                {
                    "inputBinding": {
                        "prefix": "--ASSUME_SORTED",
                        "position": 0
                    },
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/assume_sorted",
                    "type": "boolean?",
                    "doc": "If true (default), then the sort order in the header file will be ignored.  Default value: true. This option can be set to 'null' to clear the default value. Possible values: {true, false}",
                    "default": true
                },
                {
                    "inputBinding": {
                        "prefix": "--STOP_AFTER",
                        "position": 0
                    },
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/stop_after",
                    "type": "int?",
                    "doc": "Stop after processing N reads, mainly for debugging. Default value: 0. This option can be set to 'null' to clear the default value."
                },
                {
                    "inputBinding": {
                        "prefix": "--CREATE_INDEX",
                        "position": 0
                    },
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/create_index",
                    "type": "boolean?",
                    "doc": "Whether to create a BAM index when writing a coordinate-sorted BAM file.  Default value: false. Possible values: {true, false}"
                },
                {
                    "inputBinding": {
                        "prefix": "--CREATE_MD5_FILE",
                        "position": 0
                    },
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/create_md5_file",
                    "type": "boolean?",
                    "doc": "Whether to create an MD5 digest for any BAM or FASTQ files created.    Default value: false. Possible values: {true, false}"
                }
            ],
            "class": "CommandLineTool",
            "label": "GATK-CollectInsertSizeMetrics"
        }
    ]
}