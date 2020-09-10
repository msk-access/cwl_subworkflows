{
    "$graph": [
        {
            "label": "abra_fx.cwl",
            "outputs": [
                {
                    "outputSource": [
                        "#main/picard_fix_mate_information_1_97/bam"
                    ],
                    "https://www.sevenbridges.com/x": 1346.0264892578125,
                    "type": "File",
                    "https://www.sevenbridges.com/y": 640.171875,
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "id": "#main/abra_fx_bam"
                },
                {
                    "outputSource": [
                        "#main/bedtools_merge/output_file"
                    ],
                    "label": "indel_realign_targets",
                    "https://www.sevenbridges.com/x": 676.9483642578125,
                    "type": [
                        "null",
                        "File"
                    ],
                    "https://www.sevenbridges.com/y": 502.8046875,
                    "id": "#main/output_file"
                }
            ],
            "$namespaces": {
                "sbg": "https://www.sevenbridges.com/"
            },
            "inputs": [
                {
                    "https://www.sevenbridges.com/y": 853.5625,
                    "https://www.sevenbridges.com/x": 0,
                    "type": [
                        "File",
                        {
                            "items": "File",
                            "type": "array"
                        }
                    ],
                    "id": "#main/input_bam",
                    "secondaryFiles": [
                        "^.bai"
                    ]
                },
                {
                    "https://www.sevenbridges.com/y": 320.125,
                    "https://www.sevenbridges.com/x": 0,
                    "type": "File",
                    "id": "#main/reference_fasta",
                    "secondaryFiles": [
                        ".fai",
                        "^.dict"
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "id": "#main/bam_index",
                    "https://www.sevenbridges.com/y": 1280.34375
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "id": "#main/option_bedgraph",
                    "https://www.sevenbridges.com/y": 426.8203125
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "type": [
                        "null",
                        "string"
                    ],
                    "id": "#main/window_size",
                    "https://www.sevenbridges.com/y": 0
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "type": [
                        "null",
                        "string"
                    ],
                    "id": "#main/soft_clip_contig",
                    "https://www.sevenbridges.com/y": 106.6953125
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "type": [
                        "null",
                        "string"
                    ],
                    "id": "#main/scoring_gap_alignments",
                    "https://www.sevenbridges.com/y": 213.4296875
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "id": "#main/no_sort",
                    "https://www.sevenbridges.com/y": 533.515625
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "type": [
                        "null",
                        "float"
                    ],
                    "id": "#main/maximum_mixmatch_rate",
                    "https://www.sevenbridges.com/y": 640.171875
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "type": [
                        "null",
                        "int"
                    ],
                    "id": "#main/maximum_average_depth",
                    "https://www.sevenbridges.com/y": 746.8671875
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "id": "#main/ignore_bad_assembly",
                    "https://www.sevenbridges.com/y": 960.2578125
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "type": [
                        "null",
                        "string"
                    ],
                    "id": "#main/contig_anchor",
                    "https://www.sevenbridges.com/y": 1066.9921875
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "id": "#main/consensus_sequence",
                    "https://www.sevenbridges.com/y": 1173.6875
                },
                {
                    "label": "abra_number_of_threads",
                    "https://www.sevenbridges.com/x": 535.44482421875,
                    "type": [
                        "null",
                        "int"
                    ],
                    "id": "#main/number_of_threads",
                    "https://www.sevenbridges.com/y": 314.0636291503906
                },
                {
                    "label": "picard_fix_mate_information_1.96_tmpdir",
                    "https://www.sevenbridges.com/x": 1001.1474609375,
                    "type": [
                        "null",
                        "string"
                    ],
                    "id": "#main/temporary_directory",
                    "https://www.sevenbridges.com/y": 574.1583251953125
                }
            ],
            "class": "Workflow",
            "steps": [
                {
                    "label": "bedtools_genomecov",
                    "out": [
                        {
                            "id": "#main/bedtools_genomecov/output_file"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 257.390625,
                    "run": "#bedtools_genomecov_v2.28.0_cv2.cwl",
                    "in": [
                        {
                            "source": "#main/input_bam",
                            "id": "#main/bedtools_genomecov/input"
                        },
                        {
                            "source": "#main/option_bedgraph",
                            "id": "#main/bedtools_genomecov/option_bedgraph"
                        }
                    ],
                    "id": "#main/bedtools_genomecov",
                    "https://www.sevenbridges.com/y": 633.1328125
                },
                {
                    "label": "bedtools_merge",
                    "out": [
                        {
                            "id": "#main/bedtools_merge/output_file"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 503.6046142578125,
                    "run": "#bedtools_merge_v2.28.0_cv2.cwl",
                    "in": [
                        {
                            "source": "#main/bedtools_genomecov/output_file",
                            "id": "#main/bedtools_merge/input"
                        }
                    ],
                    "id": "#main/bedtools_merge",
                    "https://www.sevenbridges.com/y": 640.1328125
                },
                {
                    "label": "abra2_2.17",
                    "out": [
                        {
                            "id": "#main/abra2_2_18/realigned_bam"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 787.517578125,
                    "run": "#abra2_2.17.cwl",
                    "in": [
                        {
                            "source": "#main/number_of_threads",
                            "id": "#main/abra2_2_18/number_of_threads"
                        },
                        {
                            "source": [
                                "#main/input_bam"
                            ],
                            "id": "#main/abra2_2_18/input_bam"
                        },
                        {
                            "source": "#main/reference_fasta",
                            "id": "#main/abra2_2_18/reference_fasta"
                        },
                        {
                            "source": "#main/bedtools_merge/output_file",
                            "id": "#main/abra2_2_18/targets"
                        },
                        {
                            "source": "#main/maximum_average_depth",
                            "id": "#main/abra2_2_18/maximum_average_depth"
                        },
                        {
                            "source": "#main/soft_clip_contig",
                            "id": "#main/abra2_2_18/soft_clip_contig"
                        },
                        {
                            "source": "#main/maximum_mixmatch_rate",
                            "id": "#main/abra2_2_18/maximum_mixmatch_rate"
                        },
                        {
                            "source": "#main/scoring_gap_alignments",
                            "id": "#main/abra2_2_18/scoring_gap_alignments"
                        },
                        {
                            "source": "#main/contig_anchor",
                            "id": "#main/abra2_2_18/contig_anchor"
                        },
                        {
                            "source": "#main/window_size",
                            "id": "#main/abra2_2_18/window_size"
                        },
                        {
                            "source": "#main/consensus_sequence",
                            "id": "#main/abra2_2_18/consensus_sequence"
                        },
                        {
                            "source": "#main/ignore_bad_assembly",
                            "id": "#main/abra2_2_18/ignore_bad_assembly"
                        },
                        {
                            "source": "#main/bam_index",
                            "id": "#main/abra2_2_18/bam_index"
                        },
                        {
                            "source": "#main/no_sort",
                            "id": "#main/abra2_2_18/no_sort"
                        }
                    ],
                    "id": "#main/abra2_2_18",
                    "https://www.sevenbridges.com/y": 767.3450317382812
                },
                {
                    "label": "picard_fix_mate_information_1.96",
                    "out": [
                        {
                            "id": "#main/picard_fix_mate_information_1_97/bam"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 1150.2608642578125,
                    "run": "#picard_fix_mate_information_1.96.cwl",
                    "in": [
                        {
                            "source": "#main/abra2_2_18/realigned_bam",
                            "id": "#main/picard_fix_mate_information_1_97/input"
                        },
                        {
                            "source": "#main/temporary_directory",
                            "id": "#main/picard_fix_mate_information_1_97/temporary_directory"
                        }
                    ],
                    "id": "#main/picard_fix_mate_information_1_97",
                    "https://www.sevenbridges.com/y": 640.171875
                }
            ],
            "id": "#main",
            "requirements": []
        },
        {
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "foaf:Organization",
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/name": "Ronak Shah",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:shahr2@mskcc.org"
                        }
                    ]
                }
            ],
            "label": "abra2_2.17",
            "outputs": [
                {
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input_bam.basename.replace(/.bam/, '_abra.bam')\n    }\n}"
                    },
                    "type": [
                        "null",
                        "File",
                        {
                            "items": "File",
                            "type": "array"
                        }
                    ],
                    "id": "#abra2_2.17.cwl/abra2_2_17/realigned_bam",
                    "secondaryFiles": [
                        "^.bai"
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
                            "http://xmlns.com/foaf/0.1/name": "Ronak Shah",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:shahr2@mskcc.org"
                        }
                    ]
                }
            ],
            "inputs": [
                {
                    "doc": "Memory per job in megabytes",
                    "type": "int?",
                    "id": "#abra2_2.17.cwl/abra2_2_17/memory_per_job"
                },
                {
                    "doc": "Memory overhead per job in megabytes",
                    "type": "int?",
                    "id": "#abra2_2.17.cwl/abra2_2_17/memory_overhead"
                },
                {
                    "type": "int?",
                    "id": "#abra2_2.17.cwl/abra2_2_17/number_of_threads",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--threads"
                    }
                },
                {
                    "doc": "Required list of input sam or bam file (s) separated by comma",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "type": [
                        "File",
                        {
                            "items": "File",
                            "type": "array"
                        }
                    ],
                    "id": "#abra2_2.17.cwl/abra2_2_17/input_bam",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--in"
                    }
                },
                {
                    "doc": "Set the temp directory (overrides java.io.tmpdir)",
                    "type": "Directory?",
                    "id": "#abra2_2.17.cwl/abra2_2_17/working_directory",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--tmpdir"
                    }
                },
                {
                    "doc": "Genome reference location",
                    "secondaryFiles": [
                        ".fai"
                    ],
                    "type": "File",
                    "id": "#abra2_2.17.cwl/abra2_2_17/reference_fasta",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--ref"
                    }
                },
                {
                    "type": "File",
                    "id": "#abra2_2.17.cwl/abra2_2_17/targets",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--targets"
                    }
                },
                {
                    "doc": "Optional assembly kmer size(delimit with commas if multiple sizes specified)",
                    "type": "string?",
                    "id": "#abra2_2.17.cwl/abra2_2_17/kmer_size",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--kmer"
                    }
                },
                {
                    "doc": "Regions with average depth exceeding this value will be downsampled (default: 1000)",
                    "type": "int?",
                    "id": "#abra2_2.17.cwl/abra2_2_17/maximum_average_depth",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--mad"
                    }
                },
                {
                    "doc": "Soft clip contig args [max_contigs,min_base_qual,frac_high_qual_bases,min_soft_clip_len] (default:16,13,80,15)",
                    "type": "string?",
                    "id": "#abra2_2.17.cwl/abra2_2_17/soft_clip_contig",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--sc"
                    }
                },
                {
                    "doc": "Max allowed mismatch rate when mapping reads back to contigs (default: 0.05)",
                    "type": "float?",
                    "id": "#abra2_2.17.cwl/abra2_2_17/maximum_mixmatch_rate",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--mmr"
                    }
                },
                {
                    "doc": "Scoring used for contig alignments(match, mismatch_penalty,gap_open_penalty,gap_extend_penalty) (default:8,32,48,1)",
                    "type": "string?",
                    "id": "#abra2_2.17.cwl/abra2_2_17/scoring_gap_alignments",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--sga"
                    }
                },
                {
                    "doc": "Contig anchor [M_bases_at_contig_edge,max_mismatches_near_edge] (default:10,2)",
                    "type": "string?",
                    "id": "#abra2_2.17.cwl/abra2_2_17/contig_anchor",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--ca"
                    }
                },
                {
                    "doc": "Processing window size and overlap\n(size,overlap) (default: 400,200)",
                    "type": "string?",
                    "id": "#abra2_2.17.cwl/abra2_2_17/window_size",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--ws"
                    }
                },
                {
                    "doc": "Use positional consensus sequence when aligning high quality soft clipping",
                    "type": "boolean?",
                    "id": "#abra2_2.17.cwl/abra2_2_17/consensus_sequence",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--cons"
                    }
                },
                {
                    "doc": "Required list of output sam or bam file (s) separated by comma",
                    "type": "string?",
                    "id": "#abra2_2.17.cwl/abra2_2_17/output_file_name"
                },
                {
                    "doc": "Use this option to avoid parsing errors for corrupted assemblies",
                    "type": "boolean?",
                    "id": "#abra2_2.17.cwl/abra2_2_17/ignore_bad_assembly",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--ignore-bad-assembly"
                    }
                },
                {
                    "doc": "Enable BAM index generation when outputting sorted alignments (may require additonal memory)",
                    "type": "boolean?",
                    "id": "#abra2_2.17.cwl/abra2_2_17/bam_index",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--index"
                    }
                },
                {
                    "doc": "VCF containing known (or suspected) variant sites.  Very large files should be avoided.",
                    "type": "File?",
                    "id": "#abra2_2.17.cwl/abra2_2_17/input_vcf",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--in-vcf"
                    }
                },
                {
                    "doc": "Do not attempt to sort final output",
                    "type": "boolean?",
                    "id": "#abra2_2.17.cwl/abra2_2_17/no_sort",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--nosort"
                    }
                }
            ],
            "class": "CommandLineTool",
            "baseCommand": [
                "java"
            ],
            "arguments": [
                {
                    "position": 0,
                    "valueFrom": "${\n  if(inputs.memory_per_job && inputs.memory_overhead) {\n   \n    if(inputs.memory_per_job % 1000 == 0) {\n    \t\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      \n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\" \n    }\n  }\n  else if (inputs.memory_per_job && !inputs.memory_overhead){\n    \n    if(inputs.memory_per_job % 1000 == 0) {\n    \t\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      \n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\" \n    }\n  }\n  else if(!inputs.memory_per_job && inputs.memory_overhead){\n    \n    return \"-Xmx15G\"\n  }\n  else {\n    \n  \treturn \"-Xmx15G\"\n  }\n}"
                },
                {
                    "position": 0,
                    "valueFrom": "/usr/local/bin/abra2.jar",
                    "prefix": "-jar"
                },
                {
                    "position": 0,
                    "valueFrom": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input_bam.basename.replace(/.bam/, '_abra.bam')\n    }\n}",
                    "prefix": "--out"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "doap:Version",
                    "http://usefulinc.com/ns/doap#name": "abra2",
                    "http://usefulinc.com/ns/doap#revision": 2.17
                }
            ],
            "id": "#abra2_2.17.cwl",
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 60000,
                    "coresMin": 16
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "mskaccess/abra2:0.6.3"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ]
        },
        {
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "foaf:Organization",
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/name": "Shalabh Suman",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sumans@mskcc.org"
                        }
                    ]
                }
            ],
            "label": "bedtools_genomecov",
            "outputs": [
                {
                    "outputBinding": {
                        "glob": "${\n     if (inputs.output_file_name)\n      return inputs.output_file_name;\n    return inputs.input.basename.replace('.bam','.bedgraph');\n  }"
                    },
                    "type": "File",
                    "id": "#bedtools_genomecov_v2.28.0_cv2.cwl/bedtools_genomecov/output_file"
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "foaf:Organization",
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/name": "Shalabh Suman",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sumans@mskcc.org"
                        }
                    ]
                }
            ],
            "inputs": [
                {
                    "doc": "The input file can be in BAM format (Note: BAM  must be sorted by position)",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "type": "File",
                    "id": "#bedtools_genomecov_v2.28.0_cv2.cwl/bedtools_genomecov/input",
                    "inputBinding": {
                        "position": 5,
                        "shellQuote": false,
                        "prefix": "-ibam"
                    }
                },
                {
                    "type": "string?",
                    "id": "#bedtools_genomecov_v2.28.0_cv2.cwl/bedtools_genomecov/output_file_name"
                },
                {
                    "type": "int?",
                    "id": "#bedtools_genomecov_v2.28.0_cv2.cwl/bedtools_genomecov/memory_overhead"
                },
                {
                    "type": "int?",
                    "id": "#bedtools_genomecov_v2.28.0_cv2.cwl/bedtools_genomecov/memory_per_job"
                },
                {
                    "type": "int?",
                    "id": "#bedtools_genomecov_v2.28.0_cv2.cwl/bedtools_genomecov/number_of_threads"
                },
                {
                    "doc": "option flag parameter to choose output file format. -bg refers to bedgraph format",
                    "type": "boolean?",
                    "id": "#bedtools_genomecov_v2.28.0_cv2.cwl/bedtools_genomecov/option_bedgraph",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-bg",
                        "separate": false
                    }
                }
            ],
            "class": "CommandLineTool",
            "baseCommand": [
                "bedtools",
                "genomecov"
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "doap:Version",
                    "http://usefulinc.com/ns/doap#name": "bedtools",
                    "http://usefulinc.com/ns/doap#revision": "v2.28.0_cv2"
                }
            ],
            "stdout": "${\n    if (inputs.output_file_name)\n      return inputs.output_file_name;\n    return inputs.input.basename.replace('.bam','.bedgraph');\n  }",
            "id": "#bedtools_genomecov_v2.28.0_cv2.cwl",
            "requirements": [
                {
                    "class": "ShellCommandRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "ramMin": 20000,
                    "coresMin": 1
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "biocontainers/bedtools:v2.28.0_cv2"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ]
        },
        {
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "foaf:Organization",
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/name": "Shalabh Suman",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sumans@mskcc.org"
                        }
                    ]
                }
            ],
            "label": "bedtools_merge",
            "outputs": [
                {
                    "outputBinding": {
                        "glob": "${\n    if (inputs.output_file_name)\n      return inputs.output_file_name;\n    return inputs.input.basename.replace('.bedgraph', '.bed');\n  }"
                    },
                    "type": "File?",
                    "id": "#bedtools_merge_v2.28.0_cv2.cwl/bedtools_merge/output_file"
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "foaf:Organization",
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/name": "Shalabh Suman",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sumans@mskcc.org"
                        }
                    ]
                }
            ],
            "inputs": [
                {
                    "doc": "BEDgraph format file generated from Bedtools Genomecov module",
                    "type": "File",
                    "id": "#bedtools_merge_v2.28.0_cv2.cwl/bedtools_merge/input",
                    "inputBinding": {
                        "position": 5,
                        "shellQuote": false,
                        "prefix": "-i"
                    }
                },
                {
                    "type": "string?",
                    "id": "#bedtools_merge_v2.28.0_cv2.cwl/bedtools_merge/output_file_name"
                },
                {
                    "type": "int?",
                    "id": "#bedtools_merge_v2.28.0_cv2.cwl/bedtools_merge/memory_overhead"
                },
                {
                    "type": "int?",
                    "id": "#bedtools_merge_v2.28.0_cv2.cwl/bedtools_merge/memory_per_job"
                },
                {
                    "type": "int?",
                    "id": "#bedtools_merge_v2.28.0_cv2.cwl/bedtools_merge/number_of_threads"
                },
                {
                    "default": 0,
                    "doc": "Maximum distance between features allowed for features to be merged.",
                    "type": "int?",
                    "id": "#bedtools_merge_v2.28.0_cv2.cwl/bedtools_merge/distance_between_features",
                    "inputBinding": {
                        "position": 0,
                        "shellQuote": false,
                        "prefix": "-d"
                    }
                }
            ],
            "class": "CommandLineTool",
            "baseCommand": [
                "bedtools",
                "merge"
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "doap:Version",
                    "http://usefulinc.com/ns/doap#name": "bedtools",
                    "http://usefulinc.com/ns/doap#revision": "v2.28.0_cv2"
                }
            ],
            "stdout": "${\n    if (inputs.output_file_name)\n      return inputs.output_file_name;\n    return inputs.input.basename.replace('.bedgraph', '.bed');\n  }",
            "id": "#bedtools_merge_v2.28.0_cv2.cwl",
            "requirements": [
                {
                    "class": "ShellCommandRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "ramMin": 20000,
                    "coresMin": 1
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "biocontainers/bedtools:v2.28.0_cv2"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ]
        },
        {
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "foaf:Organization",
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/name": "Ronak Shah",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:shahr2@mskcc.org"
                        }
                    ]
                }
            ],
            "label": "picard_fix_mate_information_1.96",
            "outputs": [
                {
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/,'_fm.bam')\n    }\n} "
                    },
                    "type": "File",
                    "id": "#picard_fix_mate_information_1.96.cwl/picard_fix_mate_information_1_96/bam",
                    "secondaryFiles": [
                        "^.bai"
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
                            "http://xmlns.com/foaf/0.1/name": "Ronak Shah",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:shahr2@mskcc.org"
                        }
                    ]
                }
            ],
            "inputs": [
                {
                    "doc": "Memory per job in megabytes",
                    "type": "int?",
                    "id": "#picard_fix_mate_information_1.96.cwl/picard_fix_mate_information_1_96/memory_per_job"
                },
                {
                    "doc": "Memory overhead per job in megabytes",
                    "type": "int?",
                    "id": "#picard_fix_mate_information_1.96.cwl/picard_fix_mate_information_1_96/memory_overhead"
                },
                {
                    "type": "int?",
                    "id": "#picard_fix_mate_information_1.96.cwl/picard_fix_mate_information_1_96/number_of_threads"
                },
                {
                    "doc": "The input file to fix.  This option may be specified 0 or more times",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "type": "File",
                    "id": "#picard_fix_mate_information_1.96.cwl/picard_fix_mate_information_1_96/input",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "I=",
                        "separate": false
                    }
                },
                {
                    "doc": "Output file name (bam or sam). Not Required",
                    "type": "string?",
                    "id": "#picard_fix_mate_information_1.96.cwl/picard_fix_mate_information_1_96/output_file_name"
                },
                {
                    "doc": "Optional sort order to output in. If not supplied OUTPUT is in the same order as INPUT.Default value: null. Possible values: {unsorted, queryname, coordinate}",
                    "type": "string?",
                    "id": "#picard_fix_mate_information_1.96.cwl/picard_fix_mate_information_1_96/sort_order",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "SO=",
                        "separate": false
                    }
                },
                {
                    "doc": "Validation stringency for all SAM files read by this program.  Setting stringency to SILENT can improve performance when processing a BAM file in which variable-length data (read, qualities, tags) do not otherwise need to be decoded.  Default value: STRICT. This option can be set to 'null' to clear the default value. Possible values: {STRICT,LENIENT, SILENT}",
                    "type": "string?",
                    "id": "#picard_fix_mate_information_1.96.cwl/picard_fix_mate_information_1_96/validation_stringency",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "VALIDATION_STRINGENCY=",
                        "separate": false
                    }
                },
                {
                    "doc": "Compression level for all compressed files created (e.g. BAM and GELI).  Default value:5. This option can be set to 'null' to clear the default value.",
                    "type": "int?",
                    "id": "#picard_fix_mate_information_1.96.cwl/picard_fix_mate_information_1_96/bam_compression_level",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "COMPRESSION_LEVEL=",
                        "separate": false
                    }
                },
                {
                    "default": true,
                    "doc": "Whether to create a BAM index when writing a coordinate-sorted BAM file.  Default value:false. This option can be set to 'null' to clear the default value. Possible values:{true, false}",
                    "type": "boolean?",
                    "id": "#picard_fix_mate_information_1.96.cwl/picard_fix_mate_information_1_96/create_bam_index",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "CREATE_INDEX=true"
                    }
                },
                {
                    "doc": "Default value: null. This option may be specified 0 or more times.",
                    "type": "string?",
                    "id": "#picard_fix_mate_information_1.96.cwl/picard_fix_mate_information_1_96/temporary_directory"
                }
            ],
            "class": "CommandLineTool",
            "baseCommand": [
                "java"
            ],
            "arguments": [
                {
                    "position": 0,
                    "valueFrom": "${\n  if(inputs.memory_per_job && inputs.memory_overhead) {\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if (inputs.memory_per_job && !inputs.memory_overhead){\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if(!inputs.memory_per_job && inputs.memory_overhead){\n    return \"-Xmx15G\"\n  }\n  else {\n      return \"-Xmx15G\"\n  }\n}"
                },
                {
                    "position": 0,
                    "shellQuote": false,
                    "valueFrom": "-XX:-UseGCOverheadLimit"
                },
                {
                    "position": 0,
                    "valueFrom": "${\n    if(inputs.temporary_directory)\n        return inputs.temporary_directory;\n      return runtime.tmpdir\n}",
                    "prefix": "-Djava.io.tmpdir=",
                    "separate": false
                },
                {
                    "position": 0,
                    "valueFrom": "/usr/local/bin/FixMateInformation.jar",
                    "prefix": "-jar"
                },
                {
                    "position": 0,
                    "valueFrom": "${\n    if(inputs.temporary_directory)\n        return inputs.temporary_directory;\n      return runtime.tmpdir\n}",
                    "prefix": "TMP_DIR=",
                    "separate": false
                },
                {
                    "position": 0,
                    "valueFrom": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/,'_fm.bam')\n    }\n}",
                    "prefix": "O=",
                    "separate": false
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "doap:Version",
                    "http://usefulinc.com/ns/doap#name": "picard",
                    "http://usefulinc.com/ns/doap#revision": 1.96
                }
            ],
            "id": "#picard_fix_mate_information_1.96.cwl",
            "requirements": [
                {
                    "class": "ShellCommandRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "ramMin": 25000,
                    "coresMin": 2
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "mskaccess/picard_1.96:0.6.3"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ]
        }
    ],
    "cwlVersion": "v1.0"
}