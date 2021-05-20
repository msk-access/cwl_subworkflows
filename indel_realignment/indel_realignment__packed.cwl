{
    "$graph": [
        {
            "class": "CommandLineTool",
            "id": "#abra2_2.22.cwl",
            "baseCommand": [
                "java"
            ],
            "inputs": [
                {
                    "id": "#abra2_2.22.cwl/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#abra2_2.22.cwl/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#abra2_2.22.cwl/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#abra2_2.22.cwl/input_bam",
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
                    "id": "#abra2_2.22.cwl/working_directory",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "Set the temp directory (overrides java.io.tmpdir)"
                },
                {
                    "id": "#abra2_2.22.cwl/reference_fasta",
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
                    "id": "#abra2_2.22.cwl/targets",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--targets"
                    }
                },
                {
                    "id": "#abra2_2.22.cwl/kmer_size",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--kmer"
                    },
                    "doc": "Optional assembly kmer size(delimit with commas if multiple sizes specified)"
                },
                {
                    "id": "#abra2_2.22.cwl/maximum_average_depth",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--mad"
                    },
                    "doc": "Regions with average depth exceeding this value will be downsampled (default: 1000)"
                },
                {
                    "id": "#abra2_2.22.cwl/soft_clip_contig",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--sc"
                    },
                    "doc": "Soft clip contig args [max_contigs,min_base_qual,frac_high_qual_bases,min_soft_clip_len] (default:16,13,80,15)"
                },
                {
                    "id": "#abra2_2.22.cwl/maximum_mixmatch_rate",
                    "type": [
                        "null",
                        "float"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--mmr"
                    },
                    "doc": "Max allowed mismatch rate when mapping reads back to contigs (default: 0.05)"
                },
                {
                    "id": "#abra2_2.22.cwl/scoring_gap_alignments",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--sga"
                    },
                    "doc": "Scoring used for contig alignments(match, mismatch_penalty,gap_open_penalty,gap_extend_penalty) (default:8,32,48,1)"
                },
                {
                    "id": "#abra2_2.22.cwl/contig_anchor",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--ca"
                    },
                    "doc": "Contig anchor [M_bases_at_contig_edge,max_mismatches_near_edge] (default:10,2)"
                },
                {
                    "id": "#abra2_2.22.cwl/window_size",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--ws"
                    },
                    "doc": "Processing window size and overlap\n(size,overlap) (default: 400,200)"
                },
                {
                    "id": "#abra2_2.22.cwl/consensus_sequence",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--cons"
                    },
                    "doc": "Use positional consensus sequence when aligning high quality soft clipping"
                },
                {
                    "id": "#abra2_2.22.cwl/output_bams",
                    "type": [
                        "string",
                        {
                            "type": "array",
                            "items": "string"
                        }
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--out"
                    },
                    "doc": "Required list of output sam or bam file (s) separated by comma"
                },
                {
                    "id": "#abra2_2.22.cwl/ignore_bad_assembly",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--ignore-bad-assembly"
                    },
                    "doc": "Use this option to avoid parsing errors for corrupted assemblies"
                },
                {
                    "id": "#abra2_2.22.cwl/bam_index",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--index"
                    },
                    "doc": "Enable BAM index generation when outputting sorted alignments (may require additonal memory)"
                },
                {
                    "id": "#abra2_2.22.cwl/input_vcf",
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--in-vcf"
                    },
                    "doc": "VCF containing known (or suspected) variant sites.  Very large files should be avoided."
                },
                {
                    "id": "#abra2_2.22.cwl/no_edge_complex_indel",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--no-edge-ci"
                    },
                    "doc": "Prevent output of complex indels at read start or read end"
                },
                {
                    "id": "#abra2_2.22.cwl/no_sort",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--nosort"
                    },
                    "doc": "Do not attempt to sort final output"
                }
            ],
            "outputs": [
                {
                    "id": "#abra2_2.22.cwl/abra_realigned_bam",
                    "type": [
                        "null",
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "outputBinding": {
                        "glob": "${\n    return inputs.output_bams\n}"
                    },
                    "secondaryFiles": [
                        "^.bai"
                    ]
                }
            ],
            "label": "abra2_2.22",
            "arguments": [
                {
                    "position": 0,
                    "valueFrom": "${\n  if (inputs.memory_per_job && inputs.memory_overhead) {\n\n    if (inputs.memory_per_job % 1000 == 0) {\n\n      return \"-Xmx\" + (inputs.memory_per_job / 1000).toString() + \"G\"\n    }\n    else {\n\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job / 1000)).toString() + \"G\"\n    }\n  }\n  else if (inputs.memory_per_job && !inputs.memory_overhead) {\n\n    if (inputs.memory_per_job % 1000 == 0) {\n\n      return \"-Xmx\" + (inputs.memory_per_job / 1000).toString() + \"G\"\n    }\n    else {\n\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job / 1000)).toString() + \"G\"\n    }\n  }\n  else if (!inputs.memory_per_job && inputs.memory_overhead) {\n\n    return \"-Xmx20G\"\n  }\n  else {\n\n    return \"-Xmx20G\"\n  }\n}"
                },
                {
                    "position": 0,
                    "prefix": "-jar",
                    "valueFrom": "/usr/local/bin/abra2.jar"
                },
                {
                    "position": 0,
                    "prefix": "--threads",
                    "valueFrom": "${\n    if(inputs.number_of_threads)\n        return inputs.number_of_threads\n    return runtime.cores\n}"
                },
                {
                    "position": 0,
                    "prefix": "--tmpdir",
                    "valueFrom": "${\n    if(inputs.working_directory)\n        return inputs.working_directory;\n      return runtime.tmpdir\n}"
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
                    "dockerPull": "ghcr.io/msk-access/abra2:2.22"
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
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:kumarn1@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Nikhil Kumar"
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
                    "http://usefulinc.com/ns/doap#name": "abra2",
                    "http://usefulinc.com/ns/doap#revision": 2.22
                }
            ],
            "$namespaces": {
                "s": "https://schema.org/",
                "sbg": "https://www.sevenbridges.com/"
            }
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
                    "id": "#bedtools_genomecov_v2.28.0_cv2.cwl/input",
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
                    "id": "#bedtools_genomecov_v2.28.0_cv2.cwl/output_file_name",
                    "type": [
                        "null",
                        "string"
                    ]
                },
                {
                    "id": "#bedtools_genomecov_v2.28.0_cv2.cwl/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#bedtools_genomecov_v2.28.0_cv2.cwl/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#bedtools_genomecov_v2.28.0_cv2.cwl/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#bedtools_genomecov_v2.28.0_cv2.cwl/option_bedgraph",
                    "type": [
                        "null",
                        "boolean"
                    ],
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
                    "id": "#bedtools_genomecov_v2.28.0_cv2.cwl/bedtools_genomecove_bedgraph",
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
                    "dockerPull": "ghcr.io/msk-access/bedtools:v2.28.0_cv2"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "stdout": "${\n    if (inputs.output_file_name)\n      return inputs.output_file_name;\n    return inputs.input.basename.replace('.bam','.bedgraph');\n  }",
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sumans@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Shalabh Suman"
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
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sumans@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Shalabh Suman"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
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
                    "id": "#bedtools_merge_v2.28.0_cv2.cwl/input",
                    "type": "File",
                    "inputBinding": {
                        "position": 5,
                        "prefix": "-i",
                        "shellQuote": false
                    },
                    "doc": "BEDgraph format file generated from Bedtools Genomecov module"
                },
                {
                    "id": "#bedtools_merge_v2.28.0_cv2.cwl/output_file_name",
                    "type": [
                        "null",
                        "string"
                    ]
                },
                {
                    "id": "#bedtools_merge_v2.28.0_cv2.cwl/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#bedtools_merge_v2.28.0_cv2.cwl/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#bedtools_merge_v2.28.0_cv2.cwl/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "default": 0,
                    "id": "#bedtools_merge_v2.28.0_cv2.cwl/distance_between_features",
                    "type": [
                        "null",
                        "int"
                    ],
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
                    "id": "#bedtools_merge_v2.28.0_cv2.cwl/bedtools_merge_bed",
                    "type": "File",
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
                    "dockerPull": "ghcr.io/msk-access/bedtools:v2.28.0_cv2"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "stdout": "${\n    if (inputs.output_file_name)\n      return inputs.output_file_name;\n    return inputs.input.basename.replace('.bedgraph', '.bed');\n  }",
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sumans@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Shalabh Suman"
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
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sumans@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Shalabh Suman"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "bedtools",
                    "http://usefulinc.com/ns/doap#revision": "v2.28.0_cv2"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#picard_fix_mate_information_4.1.8.1.cwl",
            "baseCommand": [
                "java"
            ],
            "inputs": [
                {
                    "id": "#picard_fix_mate_information_4.1.8.1.cwl/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#picard_fix_mate_information_4.1.8.1.cwl/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#picard_fix_mate_information_4.1.8.1.cwl/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#picard_fix_mate_information_4.1.8.1.cwl/input",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-I"
                    },
                    "doc": "The input file to fix.  This option may be specified 0 or more times"
                },
                {
                    "id": "#picard_fix_mate_information_4.1.8.1.cwl/output_file_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "Output file name (bam or sam). Not Required"
                },
                {
                    "id": "#picard_fix_mate_information_4.1.8.1.cwl/sort_order",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-SO"
                    },
                    "doc": "Optional sort order to output in. If not supplied OUTPUT is in the same order as INPUT.Default value: null. Possible values: {unsorted, queryname, coordinate}"
                },
                {
                    "id": "#picard_fix_mate_information_4.1.8.1.cwl/validation_stringency",
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
                    "id": "#picard_fix_mate_information_4.1.8.1.cwl/bam_compression_level",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--COMPRESSION_LEVEL"
                    },
                    "doc": "Compression level for all compressed files created (e.g. BAM and GELI). Default value:5. This option can be set to 'null' to clear the default value."
                },
                {
                    "id": "#picard_fix_mate_information_4.1.8.1.cwl/use_jdk_deflater",
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
                    "id": "#picard_fix_mate_information_4.1.8.1.cwl/use_jdk_inflater",
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
                    "default": true,
                    "id": "#picard_fix_mate_information_4.1.8.1.cwl/create_bam_index",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--CREATE_INDEX"
                    },
                    "doc": "Whether to create a BAM index when writing a coordinate-sorted BAM file. Default value:false. This option can be set to 'null' to clear the default value. Possible values:{true, false}"
                },
                {
                    "id": "#picard_fix_mate_information_4.1.8.1.cwl/temporary_directory",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "Default value: null. This option may be specified 0 or more times."
                }
            ],
            "outputs": [
                {
                    "id": "#picard_fix_mate_information_4.1.8.1.cwl/picard_fix_mate_information_bam",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/,'_fm.bam')\n    }\n}"
                    },
                    "secondaryFiles": [
                        "^.bai"
                    ]
                }
            ],
            "label": "picard_fix_mate_information_4.1.8.1",
            "arguments": [
                {
                    "position": 0,
                    "valueFrom": "${\n  if(inputs.memory_per_job && inputs.memory_overhead) {\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if (inputs.memory_per_job && !inputs.memory_overhead){\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if(!inputs.memory_per_job && inputs.memory_overhead){\n    return \"-Xmx20G\"\n  }\n  else {\n      return \"-Xmx20G\"\n  }\n}"
                },
                {
                    "position": 0,
                    "shellQuote": false,
                    "valueFrom": "-XX:-UseGCOverheadLimit"
                },
                {
                    "position": 0,
                    "prefix": "-jar",
                    "valueFrom": "/gatk/gatk-package-4.1.8.1-local.jar"
                },
                {
                    "position": 0,
                    "valueFrom": "FixMateInformation"
                },
                {
                    "position": 0,
                    "prefix": "--TMP_DIR",
                    "valueFrom": "${\n    if(inputs.temporary_directory)\n        return inputs.temporary_directory;\n      return runtime.tmpdir\n}"
                },
                {
                    "position": 0,
                    "prefix": "-O",
                    "valueFrom": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/,'_fm.bam')\n    }\n}"
                }
            ],
            "requirements": [
                {
                    "class": "ShellCommandRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "ramMin": 30000,
                    "coresMin": 12
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/gatk:4.1.8.1"
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
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:kumarn1@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Nikhil Kumar"
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
                    "http://usefulinc.com/ns/doap#name": "picard",
                    "http://usefulinc.com/ns/doap#revision": "4.1.8.1"
                }
            ]
        },
        {
            "class": "Workflow",
            "id": "#main",
            "label": "indel_realignment",
            "inputs": [
                {
                    "id": "#window_size",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 0
                },
                {
                    "id": "#soft_clip_contig",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 426.796875
                },
                {
                    "id": "#scoring_gap_alignments",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 533.53125
                },
                {
                    "id": "#reference_fasta",
                    "type": "File",
                    "secondaryFiles": [
                        ".fai"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 640.21875
                },
                {
                    "id": "#no_sort",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1066.875
                },
                {
                    "id": "#maximum_mixmatch_rate",
                    "type": [
                        "null",
                        "float"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1280.25
                },
                {
                    "id": "#maximum_average_depth",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1386.9375
                },
                {
                    "id": "#input_bam",
                    "type": "File",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1493.625
                },
                {
                    "id": "#ignore_bad_assembly",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1600.3125
                },
                {
                    "id": "#contig_anchor",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1813.6875
                },
                {
                    "id": "#consensus_sequence",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1920.375
                },
                {
                    "id": "#bam_index",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2027.015625
                },
                {
                    "id": "#number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 960.234375
                },
                {
                    "id": "#option_bedgraph",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 853.546875
                },
                {
                    "id": "#no_edge_complex_indel",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1173.5625
                },
                {
                    "id": "#distance_between_features",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1707
                },
                {
                    "id": "#output_bams",
                    "type": [
                        "string",
                        {
                            "type": "array",
                            "items": "string"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 746.859375
                },
                {
                    "id": "#validation_stringency",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 106.6875
                },
                {
                    "id": "#sort_order",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 320.109375
                },
                {
                    "id": "#output_file_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 992.927978515625,
                    "https://www.sevenbridges.com/y": 794.8671875
                },
                {
                    "id": "#create_bam_index",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 992.927978515625,
                    "https://www.sevenbridges.com/y": 901.5078125
                },
                {
                    "id": "#temporary_directory",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 213.421875
                }
            ],
            "outputs": [
                {
                    "id": "#indel_realignment_bam",
                    "outputSource": [
                        "#picard_fix_mate_information_4_1_8_1/picard_fix_mate_information_bam"
                    ],
                    "type": "File",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/x": 1981.323974609375,
                    "https://www.sevenbridges.com/y": 1013.4609375
                }
            ],
            "steps": [
                {
                    "id": "#abra2_2_22",
                    "in": [
                        {
                            "id": "#abra2_2_22/number_of_threads",
                            "source": "#number_of_threads"
                        },
                        {
                            "id": "#abra2_2_22/input_bam",
                            "source": [
                                "#input_bam"
                            ]
                        },
                        {
                            "id": "#abra2_2_22/working_directory",
                            "source": "#temporary_directory"
                        },
                        {
                            "id": "#abra2_2_22/reference_fasta",
                            "source": "#reference_fasta"
                        },
                        {
                            "id": "#abra2_2_22/targets",
                            "source": "#bedtools_merge/bedtools_merge_bed"
                        },
                        {
                            "id": "#abra2_2_22/maximum_average_depth",
                            "source": "#maximum_average_depth"
                        },
                        {
                            "id": "#abra2_2_22/soft_clip_contig",
                            "source": "#soft_clip_contig"
                        },
                        {
                            "id": "#abra2_2_22/maximum_mixmatch_rate",
                            "source": "#maximum_mixmatch_rate"
                        },
                        {
                            "id": "#abra2_2_22/scoring_gap_alignments",
                            "source": "#scoring_gap_alignments"
                        },
                        {
                            "id": "#abra2_2_22/contig_anchor",
                            "source": "#contig_anchor"
                        },
                        {
                            "id": "#abra2_2_22/window_size",
                            "source": "#window_size"
                        },
                        {
                            "id": "#abra2_2_22/consensus_sequence",
                            "source": "#consensus_sequence"
                        },
                        {
                            "id": "#abra2_2_22/output_bams",
                            "source": [
                                "#output_bams"
                            ]
                        },
                        {
                            "id": "#abra2_2_22/ignore_bad_assembly",
                            "source": "#ignore_bad_assembly"
                        },
                        {
                            "id": "#abra2_2_22/bam_index",
                            "source": "#bam_index"
                        },
                        {
                            "id": "#abra2_2_22/no_edge_complex_indel",
                            "source": "#no_edge_complex_indel"
                        },
                        {
                            "id": "#abra2_2_22/no_sort",
                            "source": "#no_sort"
                        }
                    ],
                    "out": [
                        {
                            "id": "#abra2_2_22/abra_realigned_bam"
                        }
                    ],
                    "run": "#abra2_2.22.cwl",
                    "label": "abra2_2.22",
                    "https://www.sevenbridges.com/x": 992.927978515625,
                    "https://www.sevenbridges.com/y": 1120.1484375
                },
                {
                    "id": "#bedtools_genomecov",
                    "in": [
                        {
                            "id": "#bedtools_genomecov/input",
                            "source": "#input_bam"
                        },
                        {
                            "id": "#bedtools_genomecov/option_bedgraph",
                            "source": "#option_bedgraph"
                        }
                    ],
                    "out": [
                        {
                            "id": "#bedtools_genomecov/bedtools_genomecove_bedgraph"
                        }
                    ],
                    "run": "#bedtools_genomecov_v2.28.0_cv2.cwl",
                    "label": "bedtools_genomecov",
                    "https://www.sevenbridges.com/x": 269.59375,
                    "https://www.sevenbridges.com/y": 1006.4609375
                },
                {
                    "id": "#bedtools_merge",
                    "in": [
                        {
                            "id": "#bedtools_merge/input",
                            "source": "#bedtools_genomecov/bedtools_genomecove_bedgraph"
                        },
                        {
                            "id": "#bedtools_merge/distance_between_features",
                            "source": "#distance_between_features"
                        }
                    ],
                    "out": [
                        {
                            "id": "#bedtools_merge/bedtools_merge_bed"
                        }
                    ],
                    "run": "#bedtools_merge_v2.28.0_cv2.cwl",
                    "label": "bedtools_merge",
                    "https://www.sevenbridges.com/x": 635.5108642578125,
                    "https://www.sevenbridges.com/y": 1006.4609375
                },
                {
                    "id": "#picard_fix_mate_information_4_1_8_1",
                    "in": [
                        {
                            "id": "#picard_fix_mate_information_4_1_8_1/input",
                            "source": "#abra2_2_22/abra_realigned_bam"
                        },
                        {
                            "id": "#picard_fix_mate_information_4_1_8_1/output_file_name",
                            "source": "#output_file_name"
                        },
                        {
                            "id": "#picard_fix_mate_information_4_1_8_1/sort_order",
                            "source": "#sort_order"
                        },
                        {
                            "id": "#picard_fix_mate_information_4_1_8_1/validation_stringency",
                            "source": "#validation_stringency"
                        },
                        {
                            "id": "#picard_fix_mate_information_4_1_8_1/create_bam_index",
                            "source": "#create_bam_index"
                        },
                        {
                            "id": "#picard_fix_mate_information_4_1_8_1/temporary_directory",
                            "source": "#temporary_directory"
                        }
                    ],
                    "out": [
                        {
                            "id": "#picard_fix_mate_information_4_1_8_1/picard_fix_mate_information_bam"
                        }
                    ],
                    "run": "#picard_fix_mate_information_4.1.8.1.cwl",
                    "label": "picard_fix_mate_information_4.1.8.1",
                    "https://www.sevenbridges.com/x": 1546.70458984375,
                    "https://www.sevenbridges.com/y": 978.328125
                }
            ],
            "requirements": [],
            "https://schema.org/author": [
                {
                    "class": "https://schema.org/Person",
                    "https://schema.org/email": "mailto:murphyc4@mskcc.org",
                    "https://schema.org/name": "Charlie Murphy"
                }
            ],
            "https://schema.org/citation": "",
            "https://schema.org/codeRepository": "https://github.com/msk-access/cwl_subworkflows/indel_realignment",
            "https://schema.org/contributor": [
                {
                    "class": "https://schema.org/Person",
                    "https://schema.org/email": "mailto:murphyc4@mskcc.org",
                    "https://schema.org/name": "Charlie Murphy"
                }
            ],
            "https://schema.org/dateCreated": "2020-09-14",
            "https://schema.org/license": "https://spdx.org/licenses/Apache-2.0"
        }
    ],
    "cwlVersion": "v1.0",
    "$schemas": [
        "http://schema.org/version/latest/schemaorg-current-http.rdf"
    ]
}