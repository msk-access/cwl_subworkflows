{
    "$graph": [
        {
            "baseCommand": [
                "java"
            ],
            "inputs": [
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/memory_per_job",
                    "doc": "Memory per job in megabytes",
                    "type": "int?"
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/memory_overhead",
                    "doc": "Memory overhead per job in megabytes",
                    "type": "int?"
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/number_of_threads",
                    "inputBinding": {
                        "prefix": "--threads",
                        "position": 0
                    },
                    "type": "int?"
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/input_bam",
                    "inputBinding": {
                        "prefix": "--in",
                        "position": 0
                    },
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "doc": "Required list of input sam or bam file (s) separated by comma",
                    "type": [
                        "File",
                        {
                            "items": "File",
                            "type": "array"
                        }
                    ]
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/working_directory",
                    "inputBinding": {
                        "prefix": "--tmpdir",
                        "position": 0
                    },
                    "doc": "Set the temp directory (overrides java.io.tmpdir)",
                    "type": "Directory?"
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/reference_fasta",
                    "inputBinding": {
                        "prefix": "--ref",
                        "position": 0
                    },
                    "secondaryFiles": [
                        ".fai"
                    ],
                    "doc": "Genome reference location",
                    "type": "File"
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/targets",
                    "inputBinding": {
                        "prefix": "--targets",
                        "position": 0
                    },
                    "type": "File"
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/kmer_size",
                    "inputBinding": {
                        "prefix": "--kmer",
                        "position": 0
                    },
                    "doc": "Optional assembly kmer size(delimit with commas if multiple sizes specified)",
                    "type": "string?"
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/maximum_average_depth",
                    "inputBinding": {
                        "prefix": "--mad",
                        "position": 0
                    },
                    "doc": "Regions with average depth exceeding this value will be downsampled (default: 1000)",
                    "type": "int?"
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/soft_clip_contig",
                    "inputBinding": {
                        "prefix": "--sc",
                        "position": 0
                    },
                    "doc": "Soft clip contig args [max_contigs,min_base_qual,frac_high_qual_bases,min_soft_clip_len] (default:16,13,80,15)",
                    "type": "string?"
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/maximum_mixmatch_rate",
                    "inputBinding": {
                        "prefix": "--mmr",
                        "position": 0
                    },
                    "doc": "Max allowed mismatch rate when mapping reads back to contigs (default: 0.05)",
                    "type": "float?"
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/scoring_gap_alignments",
                    "inputBinding": {
                        "prefix": "--sga",
                        "position": 0
                    },
                    "doc": "Scoring used for contig alignments(match, mismatch_penalty,gap_open_penalty,gap_extend_penalty) (default:8,32,48,1)",
                    "type": "string?"
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/contig_anchor",
                    "inputBinding": {
                        "prefix": "--ca",
                        "position": 0
                    },
                    "doc": "Contig anchor [M_bases_at_contig_edge,max_mismatches_near_edge] (default:10,2)",
                    "type": "string?"
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/window_size",
                    "inputBinding": {
                        "prefix": "--ws",
                        "position": 0
                    },
                    "doc": "Processing window size and overlap\n(size,overlap) (default: 400,200)",
                    "type": "string?"
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/consensus_sequence",
                    "inputBinding": {
                        "prefix": "--cons",
                        "position": 0
                    },
                    "doc": "Use positional consensus sequence when aligning high quality soft clipping",
                    "type": "boolean?"
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/output_file_name",
                    "doc": "Required list of output sam or bam file (s) separated by comma",
                    "type": "string?"
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/ignore_bad_assembly",
                    "inputBinding": {
                        "prefix": "--ignore-bad-assembly",
                        "position": 0
                    },
                    "doc": "Use this option to avoid parsing errors for corrupted assemblies",
                    "type": "boolean?"
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/bam_index",
                    "inputBinding": {
                        "prefix": "--index",
                        "position": 0
                    },
                    "doc": "Enable BAM index generation when outputting sorted alignments (may require additonal memory)",
                    "type": "boolean?"
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/input_vcf",
                    "inputBinding": {
                        "prefix": "--in-vcf",
                        "position": 0
                    },
                    "doc": "VCF containing known (or suspected) variant sites.  Very large files should be avoided.",
                    "type": "File?"
                },
                {
                    "id": "#abra2_2.17.cwl/abra2_2_17/no_sort",
                    "inputBinding": {
                        "prefix": "--nosort",
                        "position": 0
                    },
                    "doc": "Do not attempt to sort final output",
                    "type": "boolean?"
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "http://xmlns.com/foaf/0.1/name": "Ronak Shah",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:shahr2@mskcc.org",
                            "class": "foaf:Person"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center",
                    "class": "foaf:Organization"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "http://xmlns.com/foaf/0.1/name": "Ronak Shah",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:shahr2@mskcc.org",
                            "class": "foaf:Person"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center",
                    "class": "foaf:Organization"
                }
            ],
            "$namespaces": {
                "sbg": "https://www.sevenbridges.com/"
            },
            "requirements": [
                {
                    "ramMin": 60000,
                    "coresMin": 16,
                    "class": "ResourceRequirement"
                },
                {
                    "dockerPull": "mskaccess/abra2:0.6.3",
                    "class": "DockerRequirement"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "http://usefulinc.com/ns/doap#name": "abra2",
                    "http://usefulinc.com/ns/doap#revision": 2.17,
                    "class": "doap:Version"
                }
            ],
            "id": "#abra2_2.17.cwl",
            "outputs": [
                {
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input_bam.basename.replace(/.bam/, '_abra.bam')\n    }\n}"
                    },
                    "id": "#abra2_2.17.cwl/abra2_2_17/realigned_bam",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "type": [
                        "null",
                        "File",
                        {
                            "items": "File",
                            "type": "array"
                        }
                    ]
                }
            ],
            "label": "abra2_2.17",
            "arguments": [
                {
                    "valueFrom": "${\n  if(inputs.memory_per_job && inputs.memory_overhead) {\n   \n    if(inputs.memory_per_job % 1000 == 0) {\n    \t\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      \n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\" \n    }\n  }\n  else if (inputs.memory_per_job && !inputs.memory_overhead){\n    \n    if(inputs.memory_per_job % 1000 == 0) {\n    \t\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      \n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\" \n    }\n  }\n  else if(!inputs.memory_per_job && inputs.memory_overhead){\n    \n    return \"-Xmx15G\"\n  }\n  else {\n    \n  \treturn \"-Xmx15G\"\n  }\n}",
                    "position": 0
                },
                {
                    "prefix": "-jar",
                    "valueFrom": "/usr/local/bin/abra2.jar",
                    "position": 0
                },
                {
                    "prefix": "--out",
                    "valueFrom": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input_bam.basename.replace(/.bam/, '_abra.bam')\n    }\n}",
                    "position": 0
                }
            ],
            "class": "CommandLineTool"
        },
        {
            "baseCommand": [
                "bedtools",
                "genomecov"
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "http://xmlns.com/foaf/0.1/name": "Shalabh Suman",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sumans@mskcc.org",
                            "class": "foaf:Person"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center",
                    "class": "foaf:Organization"
                }
            ],
            "inputs": [
                {
                    "id": "#bedtools_genomecov_v2.28.0_cv2.cwl/bedtools_genomecov/input",
                    "inputBinding": {
                        "prefix": "-ibam",
                        "shellQuote": false,
                        "position": 5
                    },
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "doc": "The input file can be in BAM format (Note: BAM  must be sorted by position)",
                    "type": "File"
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
                    "inputBinding": {
                        "prefix": "-bg",
                        "separate": false,
                        "position": 0
                    },
                    "doc": "option flag parameter to choose output file format. -bg refers to bedgraph format",
                    "type": "boolean?"
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "http://xmlns.com/foaf/0.1/name": "Shalabh Suman",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sumans@mskcc.org",
                            "class": "foaf:Person"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center",
                    "class": "foaf:Organization"
                }
            ],
            "requirements": [
                {
                    "class": "ShellCommandRequirement"
                },
                {
                    "ramMin": 20000,
                    "coresMin": 1,
                    "class": "ResourceRequirement"
                },
                {
                    "dockerPull": "biocontainers/bedtools:v2.28.0_cv2",
                    "class": "DockerRequirement"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "http://usefulinc.com/ns/doap#name": "bedtools",
                    "http://usefulinc.com/ns/doap#revision": "v2.28.0_cv2",
                    "class": "doap:Version"
                }
            ],
            "outputs": [
                {
                    "outputBinding": {
                        "glob": "${\n     if (inputs.output_file_name)\n      return inputs.output_file_name;\n    return inputs.input.basename.replace('.bam','.bedgraph');\n  }"
                    },
                    "id": "#bedtools_genomecov_v2.28.0_cv2.cwl/bedtools_genomecov/bedtools_genomecove_bedgraph",
                    "type": "File"
                }
            ],
            "id": "#bedtools_genomecov_v2.28.0_cv2.cwl",
            "label": "bedtools_genomecov",
            "stdout": "${\n    if (inputs.output_file_name)\n      return inputs.output_file_name;\n    return inputs.input.basename.replace('.bam','.bedgraph');\n  }",
            "class": "CommandLineTool"
        },
        {
            "baseCommand": [
                "bedtools",
                "merge"
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "http://xmlns.com/foaf/0.1/name": "Shalabh Suman",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sumans@mskcc.org",
                            "class": "foaf:Person"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center",
                    "class": "foaf:Organization"
                }
            ],
            "inputs": [
                {
                    "id": "#bedtools_merge_v2.28.0_cv2.cwl/bedtools_merge/input",
                    "inputBinding": {
                        "prefix": "-i",
                        "shellQuote": false,
                        "position": 5
                    },
                    "doc": "BEDgraph format file generated from Bedtools Genomecov module",
                    "type": "File"
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
                    "id": "#bedtools_merge_v2.28.0_cv2.cwl/bedtools_merge/distance_between_features",
                    "inputBinding": {
                        "prefix": "-d",
                        "shellQuote": false,
                        "position": 0
                    },
                    "default": 0,
                    "type": "int?",
                    "doc": "Maximum distance between features allowed for features to be merged."
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "http://xmlns.com/foaf/0.1/name": "Shalabh Suman",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sumans@mskcc.org",
                            "class": "foaf:Person"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center",
                    "class": "foaf:Organization"
                }
            ],
            "requirements": [
                {
                    "class": "ShellCommandRequirement"
                },
                {
                    "ramMin": 20000,
                    "coresMin": 1,
                    "class": "ResourceRequirement"
                },
                {
                    "dockerPull": "biocontainers/bedtools:v2.28.0_cv2",
                    "class": "DockerRequirement"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "http://usefulinc.com/ns/doap#name": "bedtools",
                    "http://usefulinc.com/ns/doap#revision": "v2.28.0_cv2",
                    "class": "doap:Version"
                }
            ],
            "outputs": [
                {
                    "outputBinding": {
                        "glob": "${\n    if (inputs.output_file_name)\n      return inputs.output_file_name;\n    return inputs.input.basename.replace('.bedgraph', '.bed');\n  }"
                    },
                    "id": "#bedtools_merge_v2.28.0_cv2.cwl/bedtools_merge/bedtools_merge_bed",
                    "type": "File?"
                }
            ],
            "id": "#bedtools_merge_v2.28.0_cv2.cwl",
            "label": "bedtools_merge",
            "stdout": "${\n    if (inputs.output_file_name)\n      return inputs.output_file_name;\n    return inputs.input.basename.replace('.bedgraph', '.bed');\n  }",
            "class": "CommandLineTool"
        },
        {
            "baseCommand": [
                "java"
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "http://xmlns.com/foaf/0.1/name": "Ronak Shah",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:shahr2@mskcc.org",
                            "class": "foaf:Person"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center",
                    "class": "foaf:Organization"
                }
            ],
            "inputs": [
                {
                    "id": "#picard_fix_mate_information_1.96.cwl/picard_fix_mate_information_1_96/memory_per_job",
                    "doc": "Memory per job in megabytes",
                    "type": "int?"
                },
                {
                    "id": "#picard_fix_mate_information_1.96.cwl/picard_fix_mate_information_1_96/memory_overhead",
                    "doc": "Memory overhead per job in megabytes",
                    "type": "int?"
                },
                {
                    "id": "#picard_fix_mate_information_1.96.cwl/picard_fix_mate_information_1_96/number_of_threads",
                    "type": "int?"
                },
                {
                    "id": "#picard_fix_mate_information_1.96.cwl/picard_fix_mate_information_1_96/input",
                    "inputBinding": {
                        "prefix": "I=",
                        "separate": false,
                        "position": 0
                    },
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "doc": "The input file to fix.  This option may be specified 0 or more times",
                    "type": "File"
                },
                {
                    "id": "#picard_fix_mate_information_1.96.cwl/picard_fix_mate_information_1_96/output_file_name",
                    "doc": "Output file name (bam or sam). Not Required",
                    "type": "string?"
                },
                {
                    "id": "#picard_fix_mate_information_1.96.cwl/picard_fix_mate_information_1_96/sort_order",
                    "inputBinding": {
                        "prefix": "SO=",
                        "separate": false,
                        "position": 0
                    },
                    "doc": "Optional sort order to output in. If not supplied OUTPUT is in the same order as INPUT.Default value: null. Possible values: {unsorted, queryname, coordinate}",
                    "type": "string?"
                },
                {
                    "id": "#picard_fix_mate_information_1.96.cwl/picard_fix_mate_information_1_96/validation_stringency",
                    "inputBinding": {
                        "prefix": "VALIDATION_STRINGENCY=",
                        "separate": false,
                        "position": 0
                    },
                    "doc": "Validation stringency for all SAM files read by this program.  Setting stringency to SILENT can improve performance when processing a BAM file in which variable-length data (read, qualities, tags) do not otherwise need to be decoded.  Default value: STRICT. This option can be set to 'null' to clear the default value. Possible values: {STRICT,LENIENT, SILENT}",
                    "type": "string?"
                },
                {
                    "id": "#picard_fix_mate_information_1.96.cwl/picard_fix_mate_information_1_96/bam_compression_level",
                    "inputBinding": {
                        "prefix": "COMPRESSION_LEVEL=",
                        "separate": false,
                        "position": 0
                    },
                    "doc": "Compression level for all compressed files created (e.g. BAM and GELI).  Default value:5. This option can be set to 'null' to clear the default value.",
                    "type": "int?"
                },
                {
                    "id": "#picard_fix_mate_information_1.96.cwl/picard_fix_mate_information_1_96/create_bam_index",
                    "inputBinding": {
                        "prefix": "CREATE_INDEX=true",
                        "position": 0
                    },
                    "default": true,
                    "type": "boolean?",
                    "doc": "Whether to create a BAM index when writing a coordinate-sorted BAM file.  Default value:false. This option can be set to 'null' to clear the default value. Possible values:{true, false}"
                },
                {
                    "id": "#picard_fix_mate_information_1.96.cwl/picard_fix_mate_information_1_96/temporary_directory",
                    "doc": "Default value: null. This option may be specified 0 or more times.",
                    "type": "string?"
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "http://xmlns.com/foaf/0.1/name": "Ronak Shah",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:shahr2@mskcc.org",
                            "class": "foaf:Person"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center",
                    "class": "foaf:Organization"
                }
            ],
            "requirements": [
                {
                    "class": "ShellCommandRequirement"
                },
                {
                    "ramMin": 25000,
                    "coresMin": 2,
                    "class": "ResourceRequirement"
                },
                {
                    "dockerPull": "mskaccess/picard_1.96:0.6.3",
                    "class": "DockerRequirement"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "http://usefulinc.com/ns/doap#name": "picard",
                    "http://usefulinc.com/ns/doap#revision": 1.96,
                    "class": "doap:Version"
                }
            ],
            "outputs": [
                {
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/,'_fm.bam')\n    }\n} "
                    },
                    "id": "#picard_fix_mate_information_1.96.cwl/picard_fix_mate_information_1_96/picard_fix_mate_information_bam",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "type": "File"
                }
            ],
            "id": "#picard_fix_mate_information_1.96.cwl",
            "label": "picard_fix_mate_information_1.96",
            "arguments": [
                {
                    "valueFrom": "${\n  if(inputs.memory_per_job && inputs.memory_overhead) {\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if (inputs.memory_per_job && !inputs.memory_overhead){\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if(!inputs.memory_per_job && inputs.memory_overhead){\n    return \"-Xmx15G\"\n  }\n  else {\n      return \"-Xmx15G\"\n  }\n}",
                    "position": 0
                },
                {
                    "shellQuote": false,
                    "position": 0,
                    "valueFrom": "-XX:-UseGCOverheadLimit"
                },
                {
                    "prefix": "-Djava.io.tmpdir=",
                    "separate": false,
                    "position": 0,
                    "valueFrom": "${\n    if(inputs.temporary_directory)\n        return inputs.temporary_directory;\n      return runtime.tmpdir\n}"
                },
                {
                    "prefix": "-jar",
                    "valueFrom": "/usr/local/bin/FixMateInformation.jar",
                    "position": 0
                },
                {
                    "prefix": "TMP_DIR=",
                    "separate": false,
                    "position": 0,
                    "valueFrom": "${\n    if(inputs.temporary_directory)\n        return inputs.temporary_directory;\n      return runtime.tmpdir\n}"
                },
                {
                    "prefix": "O=",
                    "separate": false,
                    "position": 0,
                    "valueFrom": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/,'_fm.bam')\n    }\n}"
                }
            ],
            "class": "CommandLineTool"
        },
        {
            "steps": [
                {
                    "https://www.sevenbridges.com/x": 257.390625,
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
                    "run": "#bedtools_genomecov_v2.28.0_cv2.cwl",
                    "out": [
                        {
                            "id": "#main/bedtools_genomecov/bedtools_genomecove_bedgraph"
                        }
                    ],
                    "label": "bedtools_genomecov",
                    "https://www.sevenbridges.com/y": 633.1328125
                },
                {
                    "https://www.sevenbridges.com/x": 503.6046142578125,
                    "in": [
                        {
                            "source": "#main/bedtools_genomecov/bedtools_genomecove_bedgraph",
                            "id": "#main/bedtools_merge/input"
                        }
                    ],
                    "id": "#main/bedtools_merge",
                    "run": "#bedtools_merge_v2.28.0_cv2.cwl",
                    "out": [
                        {
                            "id": "#main/bedtools_merge/bedtools_merge_bed"
                        }
                    ],
                    "label": "bedtools_merge",
                    "https://www.sevenbridges.com/y": 640.1328125
                },
                {
                    "https://www.sevenbridges.com/x": 787.517578125,
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
                            "source": "#main/bedtools_merge/bedtools_merge_bed",
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
                    "run": "#abra2_2.17.cwl",
                    "out": [
                        {
                            "id": "#main/abra2_2_18/realigned_bam"
                        }
                    ],
                    "label": "abra2_2.17",
                    "https://www.sevenbridges.com/y": 767.3450317382812
                },
                {
                    "https://www.sevenbridges.com/x": 1150.2608642578125,
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
                    "run": "#picard_fix_mate_information_1.96.cwl",
                    "out": [
                        {
                            "id": "#main/picard_fix_mate_information_1_97/picard_fix_mate_information_bam"
                        }
                    ],
                    "label": "picard_fix_mate_information_1.96",
                    "https://www.sevenbridges.com/y": 640.171875
                }
            ],
            "inputs": [
                {
                    "id": "#main/input_bam",
                    "https://www.sevenbridges.com/y": 853.5625,
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
                    "https://www.sevenbridges.com/x": 0
                },
                {
                    "id": "#main/reference_fasta",
                    "https://www.sevenbridges.com/y": 320.125,
                    "secondaryFiles": [
                        ".fai",
                        "^.dict"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0
                },
                {
                    "id": "#main/bam_index",
                    "https://www.sevenbridges.com/y": 1280.34375,
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 0
                },
                {
                    "id": "#main/option_bedgraph",
                    "https://www.sevenbridges.com/y": 426.8203125,
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 0
                },
                {
                    "id": "#main/window_size",
                    "https://www.sevenbridges.com/y": 0,
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0
                },
                {
                    "id": "#main/soft_clip_contig",
                    "https://www.sevenbridges.com/y": 106.6953125,
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0
                },
                {
                    "id": "#main/scoring_gap_alignments",
                    "https://www.sevenbridges.com/y": 213.4296875,
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0
                },
                {
                    "id": "#main/no_sort",
                    "https://www.sevenbridges.com/y": 533.515625,
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 0
                },
                {
                    "id": "#main/maximum_mixmatch_rate",
                    "https://www.sevenbridges.com/y": 640.171875,
                    "type": [
                        "null",
                        "float"
                    ],
                    "https://www.sevenbridges.com/x": 0
                },
                {
                    "id": "#main/maximum_average_depth",
                    "https://www.sevenbridges.com/y": 746.8671875,
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0
                },
                {
                    "id": "#main/ignore_bad_assembly",
                    "https://www.sevenbridges.com/y": 960.2578125,
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 0
                },
                {
                    "id": "#main/contig_anchor",
                    "https://www.sevenbridges.com/y": 1066.9921875,
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0
                },
                {
                    "id": "#main/consensus_sequence",
                    "https://www.sevenbridges.com/y": 1173.6875,
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 0
                },
                {
                    "id": "#main/number_of_threads",
                    "https://www.sevenbridges.com/y": 314.0636291503906,
                    "label": "abra_number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 535.44482421875
                },
                {
                    "id": "#main/temporary_directory",
                    "https://www.sevenbridges.com/y": 574.1583251953125,
                    "label": "picard_fix_mate_information_1.96_tmpdir",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 1001.1474609375
                }
            ],
            "requirements": [],
            "outputs": [
                {
                    "type": "File",
                    "https://www.sevenbridges.com/x": 1346.0264892578125,
                    "id": "#main/abra_fx_bam",
                    "outputSource": [
                        "#main/picard_fix_mate_information_1_97/picard_fix_mate_information_bam"
                    ],
                    "https://www.sevenbridges.com/y": 640.171875,
                    "secondaryFiles": [
                        "^.bai"
                    ]
                },
                {
                    "type": [
                        "null",
                        "File"
                    ],
                    "https://www.sevenbridges.com/x": 676.9483642578125,
                    "id": "#main/bedtools_merge_bed",
                    "outputSource": [
                        "#main/bedtools_merge/bedtools_merge_bed"
                    ],
                    "https://www.sevenbridges.com/y": 502.8046875,
                    "label": "indel_realign_targets"
                }
            ],
            "id": "#main",
            "label": "abra_fx.cwl",
            "class": "Workflow"
        }
    ],
    "cwlVersion": "v1.0"
}