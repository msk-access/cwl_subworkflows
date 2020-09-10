{
    "$graph": [
        {
            "class": "Workflow",
            "id": "#main",
            "label": "abra_fx.cwl",
            "inputs": [
                {
                    "id": "#main/input_bam",
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 853.5625
                },
                {
                    "id": "#main/reference_fasta",
                    "type": "File",
                    "secondaryFiles": [
                        ".fai",
                        "^.dict"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 320.125
                },
                {
                    "id": "#main/bam_index",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1280.34375
                },
                {
                    "id": "#main/option_bedgraph",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 426.8203125
                },
                {
                    "id": "#main/window_size",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 0
                },
                {
                    "id": "#main/soft_clip_contig",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 106.6953125
                },
                {
                    "id": "#main/scoring_gap_alignments",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 213.4296875
                },
                {
                    "id": "#main/no_sort",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 533.515625
                },
                {
                    "id": "#main/maximum_mixmatch_rate",
                    "type": [
                        "null",
                        "float"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 640.171875
                },
                {
                    "id": "#main/maximum_average_depth",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 746.8671875
                },
                {
                    "id": "#main/ignore_bad_assembly",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 960.2578125
                },
                {
                    "id": "#main/contig_anchor",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1066.9921875
                },
                {
                    "id": "#main/consensus_sequence",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1173.6875
                },
                {
                    "id": "#main/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ],
                    "label": "abra_number_of_threads",
                    "https://www.sevenbridges.com/x": 535.44482421875,
                    "https://www.sevenbridges.com/y": 314.0636291503906
                },
                {
                    "id": "#main/temporary_directory",
                    "type": [
                        "null",
                        "string"
                    ],
                    "label": "picard_fix_mate_information_1.96_tmpdir",
                    "https://www.sevenbridges.com/x": 1001.1474609375,
                    "https://www.sevenbridges.com/y": 574.1583251953125
                }
            ],
            "outputs": [
                {
                    "id": "#main/abra_fx_bam",
                    "outputSource": [
                        "#main/picard_fix_mate_information_1_97/bam"
                    ],
                    "type": "File",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/x": 1346.0264892578125,
                    "https://www.sevenbridges.com/y": 640.171875
                },
                {
                    "id": "#main/output_file",
                    "outputSource": [
                        "#main/bedtools_merge/output_file"
                    ],
                    "type": [
                        "null",
                        "File"
                    ],
                    "label": "indel_realign_targets",
                    "https://www.sevenbridges.com/x": 676.9483642578125,
                    "https://www.sevenbridges.com/y": 502.8046875
                }
            ],
            "steps": [
                {
                    "id": "#main/bedtools_genomecov",
                    "in": [
                        {
                            "id": "#main/bedtools_genomecov/input",
                            "source": "#main/input_bam"
                        },
                        {
                            "id": "#main/bedtools_genomecov/option_bedgraph",
                            "source": "#main/option_bedgraph"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/bedtools_genomecov/output_file"
                        }
                    ],
                    "run": "#bedtools_genomecov_v2.28.0_cv2.cwl",
                    "label": "bedtools_genomecov",
                    "https://www.sevenbridges.com/x": 257.390625,
                    "https://www.sevenbridges.com/y": 633.1328125
                },
                {
                    "id": "#main/bedtools_merge",
                    "in": [
                        {
                            "id": "#main/bedtools_merge/input",
                            "source": "#main/bedtools_genomecov/output_file"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/bedtools_merge/output_file"
                        }
                    ],
                    "run": "#bedtools_merge_v2.28.0_cv2.cwl",
                    "label": "bedtools_merge",
                    "https://www.sevenbridges.com/x": 503.6046142578125,
                    "https://www.sevenbridges.com/y": 640.1328125
                },
                {
                    "id": "#main/abra2_2_18",
                    "in": [
                        {
                            "id": "#main/abra2_2_18/number_of_threads",
                            "source": "#main/number_of_threads"
                        },
                        {
                            "id": "#main/abra2_2_18/input_bam",
                            "source": [
                                "#main/input_bam"
                            ]
                        },
                        {
                            "id": "#main/abra2_2_18/reference_fasta",
                            "source": "#main/reference_fasta"
                        },
                        {
                            "id": "#main/abra2_2_18/targets",
                            "source": "#main/bedtools_merge/output_file"
                        },
                        {
                            "id": "#main/abra2_2_18/maximum_average_depth",
                            "source": "#main/maximum_average_depth"
                        },
                        {
                            "id": "#main/abra2_2_18/soft_clip_contig",
                            "source": "#main/soft_clip_contig"
                        },
                        {
                            "id": "#main/abra2_2_18/maximum_mixmatch_rate",
                            "source": "#main/maximum_mixmatch_rate"
                        },
                        {
                            "id": "#main/abra2_2_18/scoring_gap_alignments",
                            "source": "#main/scoring_gap_alignments"
                        },
                        {
                            "id": "#main/abra2_2_18/contig_anchor",
                            "source": "#main/contig_anchor"
                        },
                        {
                            "id": "#main/abra2_2_18/window_size",
                            "source": "#main/window_size"
                        },
                        {
                            "id": "#main/abra2_2_18/consensus_sequence",
                            "source": "#main/consensus_sequence"
                        },
                        {
                            "id": "#main/abra2_2_18/ignore_bad_assembly",
                            "source": "#main/ignore_bad_assembly"
                        },
                        {
                            "id": "#main/abra2_2_18/bam_index",
                            "source": "#main/bam_index"
                        },
                        {
                            "id": "#main/abra2_2_18/no_sort",
                            "source": "#main/no_sort"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/abra2_2_18/realigned_bam"
                        }
                    ],
                    "run": "#abra2_2.17.cwl",
                    "label": "abra2_2.17",
                    "https://www.sevenbridges.com/x": 787.517578125,
                    "https://www.sevenbridges.com/y": 767.3450317382812
                },
                {
                    "id": "#main/picard_fix_mate_information_1_97",
                    "in": [
                        {
                            "id": "#main/picard_fix_mate_information_1_97/input",
                            "source": "#main/abra2_2_18/realigned_bam"
                        },
                        {
                            "id": "#main/picard_fix_mate_information_1_97/temporary_directory",
                            "source": "#main/temporary_directory"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/picard_fix_mate_information_1_97/bam"
                        }
                    ],
                    "run": "#picard_fix_mate_information_1.96.cwl",
                    "label": "picard_fix_mate_information_1.96",
                    "https://www.sevenbridges.com/x": 1150.2608642578125,
                    "https://www.sevenbridges.com/y": 640.171875
                }
            ],
            "requirements": [],
            "$namespaces": {
                "sbg": "https://www.sevenbridges.com/"
            }
        },
        {
            "class": "CommandLineTool",
            "id": "#abra2_2.17.cwl",
            "baseCommand": [
                "java"
            ],
            "inputs": [
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/memory_per_job",
                    "type": "int?",
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/memory_overhead",
                    "type": "int?",
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/number_of_threads",
                    "type": "int?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--threads"
                    }
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/input_bam",
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--in"
                    },
                    "doc": "Required list of input sam or bam file (s) separated by comma",
                    "secondaryFiles": [
                        "^.bai"
                    ]
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/working_directory",
                    "type": "Directory?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--tmpdir"
                    },
                    "doc": "Set the temp directory (overrides java.io.tmpdir)"
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/reference_fasta",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--ref"
                    },
                    "doc": "Genome reference location",
                    "secondaryFiles": [
                        ".fai"
                    ]
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/targets",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--targets"
                    }
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/kmer_size",
                    "type": "string?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--kmer"
                    },
                    "doc": "Optional assembly kmer size(delimit with commas if multiple sizes specified)"
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/maximum_average_depth",
                    "type": "int?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--mad"
                    },
                    "doc": "Regions with average depth exceeding this value will be downsampled (default: 1000)"
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/soft_clip_contig",
                    "type": "string?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--sc"
                    },
                    "doc": "Soft clip contig args [max_contigs,min_base_qual,frac_high_qual_bases,min_soft_clip_len] (default:16,13,80,15)"
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/maximum_mixmatch_rate",
                    "type": "float?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--mmr"
                    },
                    "doc": "Max allowed mismatch rate when mapping reads back to contigs (default: 0.05)"
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/scoring_gap_alignments",
                    "type": "string?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--sga"
                    },
                    "doc": "Scoring used for contig alignments(match, mismatch_penalty,gap_open_penalty,gap_extend_penalty) (default:8,32,48,1)"
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/contig_anchor",
                    "type": "string?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--ca"
                    },
                    "doc": "Contig anchor [M_bases_at_contig_edge,max_mismatches_near_edge] (default:10,2)"
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/window_size",
                    "type": "string?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--ws"
                    },
                    "doc": "Processing window size and overlap\n(size,overlap) (default: 400,200)"
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/consensus_sequence",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--cons"
                    },
                    "doc": "Use positional consensus sequence when aligning high quality soft clipping"
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/output_file_name",
                    "type": "string?",
                    "doc": "Required list of output sam or bam file (s) separated by comma"
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/ignore_bad_assembly",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--ignore-bad-assembly"
                    },
                    "doc": "Use this option to avoid parsing errors for corrupted assemblies"
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/bam_index",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--index"
                    },
                    "doc": "Enable BAM index generation when outputting sorted alignments (may require additonal memory)"
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/input_vcf",
                    "type": "File?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--in-vcf"
                    },
                    "doc": "VCF containing known (or suspected) variant sites.  Very large files should be avoided."
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/no_sort",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--nosort"
                    },
                    "doc": "Do not attempt to sort final output"
                }
            ],
            "outputs": [
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/realigned_bam",
                    "type": [
                        "null",
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input_bam.basename.replace(/.bam/, '_abra.bam')\n    }\n}"
                    },
                    "secondaryFiles": [
                        "^.bai"
                    ]
                }
            ],
            "label": "abra2_2.17",
            "arguments": [
                {
                    "position": 0,
                    "valueFrom": "${\n  if(inputs.memory_per_job && inputs.memory_overhead) {\n   \n    if(inputs.memory_per_job % 1000 == 0) {\n    \t\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      \n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\" \n    }\n  }\n  else if (inputs.memory_per_job && !inputs.memory_overhead){\n    \n    if(inputs.memory_per_job % 1000 == 0) {\n    \t\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      \n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\" \n    }\n  }\n  else if(!inputs.memory_per_job && inputs.memory_overhead){\n    \n    return \"-Xmx15G\"\n  }\n  else {\n    \n  \treturn \"-Xmx15G\"\n  }\n}"
                },
                {
                    "position": 0,
                    "prefix": "-jar",
                    "valueFrom": "/usr/local/bin/abra2.jar"
                },
                {
                    "position": 0,
                    "prefix": "--out",
                    "valueFrom": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input_bam.basename.replace(/.bam/, '_abra.bam')\n    }\n}"
                }
            ],
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
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "foaf:Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:shahr2@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Ronak Shah"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "foaf:Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:shahr2@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Ronak Shah"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "doap:Version",
                    "http://usefulinc.com/ns/doap#name": "abra2",
                    "http://usefulinc.com/ns/doap#revision": 2.17
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#bedtools_genomecov_v2.28.0_cv2.cwl",
            "baseCommand": [
                "bedtools",
                "genomecov"
            ],
            "inputs": [
                {
                    "id": "#bedtools_genomecov_v2.28.0_cv2.cwl/bedtools_genomecov/input",
                    "type": "File",
                    "inputBinding": {
                        "position": 5,
                        "prefix": "-ibam",
                        "shellQuote": false
                    },
                    "doc": "The input file can be in BAM format (Note: BAM  must be sorted by position)",
                    "secondaryFiles": [
                        "^.bai"
                    ]
                },
                {
                    "id": "#bedtools_genomecov_v2.28.0_cv2.cwl/bedtools_genomecov/output_file_name",
                    "type": "string?"
                },
                {
                    "id": "#bedtools_genomecov_v2.28.0_cv2.cwl/bedtools_genomecov/memory_overhead",
                    "type": "int?"
                },
                {
                    "id": "#bedtools_genomecov_v2.28.0_cv2.cwl/bedtools_genomecov/memory_per_job",
                    "type": "int?"
                },
                {
                    "id": "#bedtools_genomecov_v2.28.0_cv2.cwl/bedtools_genomecov/number_of_threads",
                    "type": "int?"
                },
                {
                    "id": "#bedtools_genomecov_v2.28.0_cv2.cwl/bedtools_genomecov/option_bedgraph",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-bg",
                        "separate": false
                    },
                    "doc": "option flag parameter to choose output file format. -bg refers to bedgraph format"
                }
            ],
            "outputs": [
                {
                    "id": "#bedtools_genomecov_v2.28.0_cv2.cwl/bedtools_genomecov/output_file",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n     if (inputs.output_file_name)\n      return inputs.output_file_name;\n    return inputs.input.basename.replace('.bam','.bedgraph');\n  }"
                    }
                }
            ],
            "label": "bedtools_genomecov",
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
            ],
            "stdout": "${\n    if (inputs.output_file_name)\n      return inputs.output_file_name;\n    return inputs.input.basename.replace('.bam','.bedgraph');\n  }",
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "foaf:Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sumans@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Shalabh Suman"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "foaf:Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sumans@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Shalabh Suman"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "doap:Version",
                    "http://usefulinc.com/ns/doap#name": "bedtools",
                    "http://usefulinc.com/ns/doap#revision": "v2.28.0_cv2"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#bedtools_merge_v2.28.0_cv2.cwl",
            "baseCommand": [
                "bedtools",
                "merge"
            ],
            "inputs": [
                {
                    "id": "#bedtools_merge_v2.28.0_cv2.cwl/bedtools_merge/input",
                    "type": "File",
                    "inputBinding": {
                        "position": 5,
                        "prefix": "-i",
                        "shellQuote": false
                    },
                    "doc": "BEDgraph format file generated from Bedtools Genomecov module"
                },
                {
                    "id": "#bedtools_merge_v2.28.0_cv2.cwl/bedtools_merge/output_file_name",
                    "type": "string?"
                },
                {
                    "id": "#bedtools_merge_v2.28.0_cv2.cwl/bedtools_merge/memory_overhead",
                    "type": "int?"
                },
                {
                    "id": "#bedtools_merge_v2.28.0_cv2.cwl/bedtools_merge/memory_per_job",
                    "type": "int?"
                },
                {
                    "id": "#bedtools_merge_v2.28.0_cv2.cwl/bedtools_merge/number_of_threads",
                    "type": "int?"
                },
                {
                    "default": 0,
                    "id": "#bedtools_merge_v2.28.0_cv2.cwl/bedtools_merge/distance_between_features",
                    "type": "int?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-d",
                        "shellQuote": false
                    },
                    "doc": "Maximum distance between features allowed for features to be merged."
                }
            ],
            "outputs": [
                {
                    "id": "#bedtools_merge_v2.28.0_cv2.cwl/bedtools_merge/output_file",
                    "type": "File?",
                    "outputBinding": {
                        "glob": "${\n    if (inputs.output_file_name)\n      return inputs.output_file_name;\n    return inputs.input.basename.replace('.bedgraph', '.bed');\n  }"
                    }
                }
            ],
            "label": "bedtools_merge",
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
            ],
            "stdout": "${\n    if (inputs.output_file_name)\n      return inputs.output_file_name;\n    return inputs.input.basename.replace('.bedgraph', '.bed');\n  }",
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "foaf:Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sumans@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Shalabh Suman"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "foaf:Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sumans@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Shalabh Suman"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "doap:Version",
                    "http://usefulinc.com/ns/doap#name": "bedtools",
                    "http://usefulinc.com/ns/doap#revision": "v2.28.0_cv2"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#picard_fix_mate_information_1.96.cwl",
            "baseCommand": [
                "java"
            ],
            "inputs": [
                {
                    "id": "#picard_fix_mate_information_1.96.cwl/picard_fix_mate_information_1_96/memory_per_job",
                    "type": "int?",
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#picard_fix_mate_information_1.96.cwl/picard_fix_mate_information_1_96/memory_overhead",
                    "type": "int?",
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#picard_fix_mate_information_1.96.cwl/picard_fix_mate_information_1_96/number_of_threads",
                    "type": "int?"
                },
                {
                    "id": "#picard_fix_mate_information_1.96.cwl/picard_fix_mate_information_1_96/input",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "I=",
                        "separate": false
                    },
                    "doc": "The input file to fix.  This option may be specified 0 or more times",
                    "secondaryFiles": [
                        "^.bai"
                    ]
                },
                {
                    "id": "#picard_fix_mate_information_1.96.cwl/picard_fix_mate_information_1_96/output_file_name",
                    "type": "string?",
                    "doc": "Output file name (bam or sam). Not Required"
                },
                {
                    "id": "#picard_fix_mate_information_1.96.cwl/picard_fix_mate_information_1_96/sort_order",
                    "type": "string?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "SO=",
                        "separate": false
                    },
                    "doc": "Optional sort order to output in. If not supplied OUTPUT is in the same order as INPUT.Default value: null. Possible values: {unsorted, queryname, coordinate}"
                },
                {
                    "id": "#picard_fix_mate_information_1.96.cwl/picard_fix_mate_information_1_96/validation_stringency",
                    "type": "string?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "VALIDATION_STRINGENCY=",
                        "separate": false
                    },
                    "doc": "Validation stringency for all SAM files read by this program.  Setting stringency to SILENT can improve performance when processing a BAM file in which variable-length data (read, qualities, tags) do not otherwise need to be decoded.  Default value: STRICT. This option can be set to 'null' to clear the default value. Possible values: {STRICT,LENIENT, SILENT}"
                },
                {
                    "id": "#picard_fix_mate_information_1.96.cwl/picard_fix_mate_information_1_96/bam_compression_level",
                    "type": "int?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "COMPRESSION_LEVEL=",
                        "separate": false
                    },
                    "doc": "Compression level for all compressed files created (e.g. BAM and GELI).  Default value:5. This option can be set to 'null' to clear the default value."
                },
                {
                    "default": true,
                    "id": "#picard_fix_mate_information_1.96.cwl/picard_fix_mate_information_1_96/create_bam_index",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "CREATE_INDEX=true"
                    },
                    "doc": "Whether to create a BAM index when writing a coordinate-sorted BAM file.  Default value:false. This option can be set to 'null' to clear the default value. Possible values:{true, false}"
                },
                {
                    "id": "#picard_fix_mate_information_1.96.cwl/picard_fix_mate_information_1_96/temporary_directory",
                    "type": "string?",
                    "doc": "Default value: null. This option may be specified 0 or more times."
                }
            ],
            "outputs": [
                {
                    "id": "#picard_fix_mate_information_1.96.cwl/picard_fix_mate_information_1_96/bam",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/,'_fm.bam')\n    }\n} "
                    },
                    "secondaryFiles": [
                        "^.bai"
                    ]
                }
            ],
            "label": "picard_fix_mate_information_1.96",
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
                    "prefix": "-Djava.io.tmpdir=",
                    "separate": false,
                    "valueFrom": "${\n    if(inputs.temporary_directory)\n        return inputs.temporary_directory;\n      return runtime.tmpdir\n}"
                },
                {
                    "position": 0,
                    "prefix": "-jar",
                    "valueFrom": "/usr/local/bin/FixMateInformation.jar"
                },
                {
                    "position": 0,
                    "prefix": "TMP_DIR=",
                    "separate": false,
                    "valueFrom": "${\n    if(inputs.temporary_directory)\n        return inputs.temporary_directory;\n      return runtime.tmpdir\n}"
                },
                {
                    "position": 0,
                    "prefix": "O=",
                    "separate": false,
                    "valueFrom": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/,'_fm.bam')\n    }\n}"
                }
            ],
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
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "foaf:Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:shahr2@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Ronak Shah"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "foaf:Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:shahr2@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Ronak Shah"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "doap:Version",
                    "http://usefulinc.com/ns/doap#name": "picard",
                    "http://usefulinc.com/ns/doap#revision": 1.96
                }
            ]
        }
    ],
    "cwlVersion": "v1.0"
}