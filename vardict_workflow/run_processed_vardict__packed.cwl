{
    "$graph": [
        {
            "class": "CommandLineTool",
            "id": "#bcftools_bgzip_1.15.1.cwl",
            "baseCommand": [
                "bgzip"
            ],
            "inputs": [
                {
                    "id": "#bcftools_bgzip_1.15.1.cwl/bgzip/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#bcftools_bgzip_1.15.1.cwl/bgzip/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#bcftools_bgzip_1.15.1.cwl/bgzip/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#bcftools_bgzip_1.15.1.cwl/bgzip/stdout",
                    "type": "boolean",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-c"
                    },
                    "doc": "Stdandard output for bgzip"
                },
                {
                    "id": "#bcftools_bgzip_1.15.1.cwl/bgzip/input",
                    "type": "File",
                    "inputBinding": {
                        "position": 10
                    },
                    "doc": "input VCF file"
                },
                {
                    "id": "#bcftools_bgzip_1.15.1.cwl/bgzip/output_file_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "Name of the output file"
                }
            ],
            "label": "bgzip",
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 8000,
                    "coresMin": 1
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/bcftools:1.15.1"
                },
                {
                    "class": "InitialWorkDirRequirement",
                    "listing": [
                        {
                            "entry": "$(inputs.input)"
                        }
                    ]
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "stdout": "${ \n    if (inputs.output_file_name) { \n        return inputs.output_file_name \n    } else { \n        return inputs.input.basename.replace(/.vcf/, '.vcf.gz') \n    } \n}",
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sivaprk@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Karthigayini Sivaprakasam"
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
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sivaprk@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Karthigayini Sivaprakasam"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "bgzip",
                    "http://usefulinc.com/ns/doap#revision": "1.15.1"
                }
            ],
            "outputs": [
                {
                    "id": "#bcftools_bgzip_1.15.1.cwl/bgzip/zippedVcf",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${ \n    if (inputs.output_file_name) { \n        return inputs.output_file_name \n    } else { \n        return inputs.input.basename.replace(/.vcf/, '.vcf.gz') \n    } \n}"
                    }
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#bcftools_concat_1.15.1.cwl",
            "baseCommand": [
                "bcftools",
                "concat"
            ],
            "inputs": [
                {
                    "id": "#bcftools_concat_1.15.1.cwl/bcftools_concat/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#bcftools_concat_1.15.1.cwl/bcftools_concat/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#bcftools_concat_1.15.1.cwl/bcftools_concat/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#bcftools_concat_1.15.1.cwl/bcftools_concat/allow_overlaps",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-a"
                    },
                    "doc": "First coordinate of the next file can precede last record of the current file."
                },
                {
                    "id": "#bcftools_concat_1.15.1.cwl/bcftools_concat/output_name",
                    "type": "string",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-o"
                    },
                    "doc": "Output file name"
                },
                {
                    "id": "#bcftools_concat_1.15.1.cwl/bcftools_concat/output_type",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 99,
                        "prefix": "-O"
                    },
                    "doc": "compressed BCF (b), uncompressed BCF (u), compressed VCF (z), uncompressed VCF (v)"
                },
                {
                    "id": "#bcftools_concat_1.15.1.cwl/bcftools_concat/input",
                    "type": {
                        "type": "array",
                        "items": "File"
                    },
                    "inputBinding": {
                        "position": 100
                    },
                    "secondaryFiles": [
                        ".tbi"
                    ]
                }
            ],
            "outputs": [
                {
                    "id": "#bcftools_concat_1.15.1.cwl/bcftools_concat/concatenated_vcf",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    return inputs.output_name\n} "
                    }
                }
            ],
            "label": "bcftools_concat",
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 8000,
                    "coresMin": 1
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/bcftools:1.15.1"
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
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sivaprk@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Karthigayini Sivaprakasam"
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
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sivaprk@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Karthigayini Sivaprakasam"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "bcftools concat",
                    "http://usefulinc.com/ns/doap#revision": "1.15.1"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#bcftools_norm_1.15.1.cwl",
            "baseCommand": [
                "bcftools",
                "norm"
            ],
            "inputs": [
                {
                    "id": "#bcftools_norm_1.15.1.cwl/norm/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#bcftools_norm_1.15.1.cwl/norm/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#bcftools_norm_1.15.1.cwl/norm/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#bcftools_norm_1.15.1.cwl/norm/check_ref",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 99,
                        "prefix": "--check-ref"
                    }
                },
                {
                    "id": "#bcftools_norm_1.15.1.cwl/norm/multiallelics",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 99,
                        "prefix": "-m"
                    },
                    "doc": "use any"
                },
                {
                    "id": "#bcftools_norm_1.15.1.cwl/norm/output_type",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 99,
                        "prefix": "-O"
                    }
                },
                {
                    "id": "#bcftools_norm_1.15.1.cwl/norm/output_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 99,
                        "prefix": "-o"
                    }
                },
                {
                    "id": "#bcftools_norm_1.15.1.cwl/norm/input",
                    "type": "File",
                    "inputBinding": {
                        "position": 100
                    },
                    "doc": "input vcf file",
                    "secondaryFiles": [
                        ".tbi"
                    ]
                },
                {
                    "id": "#bcftools_norm_1.15.1.cwl/norm/fastaRef",
                    "type": "File",
                    "inputBinding": {
                        "position": 99,
                        "prefix": "-f"
                    },
                    "secondaryFiles": [
                        ".fai"
                    ]
                }
            ],
            "outputs": [
                {
                    "id": "#bcftools_norm_1.15.1.cwl/norm/normalized_vcf",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_name) {\n        return inputs.output_name\n    } else {\n        return inputs.input.basename.replace(/.vcf/, '_norm.vcf') \n    } \n}"
                    }
                }
            ],
            "label": "bcftools_norm",
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 8000,
                    "coresMin": 1
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/bcftools:1.15.1"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "stdout": "${\n          if(inputs.output_name) {\n              return inputs.output_name\n          } else {\n              return inputs.input.basename.replace(/.vcf/, '_norm.vcf') \n          } \n      }",
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sivaprk@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Karthigayini Sivaprakasam"
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
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sivaprk@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Karthigayini Sivaprakasam"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "bcftools norm",
                    "http://usefulinc.com/ns/doap#revision": "1.15.1"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#bcftools_sort._1.15.1.cwl",
            "baseCommand": [
                "bcftools",
                "sort"
            ],
            "inputs": [
                {
                    "id": "#bcftools_sort._1.15.1.cwl/bcftools_sort/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#bcftools_sort._1.15.1.cwl/bcftools_sort/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#bcftools_sort._1.15.1.cwl/bcftools_sort/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--threads"
                    }
                },
                {
                    "id": "#bcftools_sort._1.15.1.cwl/bcftools_sort/output_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "Output file name"
                },
                {
                    "id": "#bcftools_sort._1.15.1.cwl/bcftools_sort/output_type",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 99,
                        "prefix": "-O"
                    },
                    "doc": "compressed BCF (b), uncompressed BCF (u), compressed VCF (z), uncompressed VCF (v)"
                },
                {
                    "id": "#bcftools_sort._1.15.1.cwl/bcftools_sort/input",
                    "type": "File",
                    "inputBinding": {
                        "position": 100
                    },
                    "doc": "input vcf files",
                    "secondaryFiles": [
                        ".tbi"
                    ]
                }
            ],
            "outputs": [
                {
                    "id": "#bcftools_sort._1.15.1.cwl/bcftools_sort/sorted_file",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_name) {\n        return inputs.output_name\n    } else {\n        return inputs.input.basename.replace(/.vcf/, '.sorted.vcf') \n    } \n}"
                    }
                }
            ],
            "label": "bcftools_sort",
            "arguments": [
                {
                    "position": 0,
                    "prefix": "-o",
                    "valueFrom": "${\n    if(inputs.output_name) {\n        return inputs.output_name\n    } else {\n        return inputs.input.basename.replace(/.vcf/, '.sorted.vcf') \n        } \n    }"
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 8000,
                    "coresMin": 1
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/bcftools:1.15.1"
                },
                {
                    "class": "InitialWorkDirRequirement",
                    "listing": [
                        "$(inputs.input)"
                    ]
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
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sivaprk@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Karthigayini Sivaprakasam"
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
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sivaprk@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Karthigayini Sivaprakasam"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "bcftools sort",
                    "http://usefulinc.com/ns/doap#revision": "1.15.1"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#bcftools_tabix_1.15.1.cwl",
            "baseCommand": [
                "tabix"
            ],
            "inputs": [
                {
                    "id": "#bcftools_tabix_1.15.1.cwl/tabix/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#bcftools_tabix_1.15.1.cwl/tabix/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#bcftools_tabix_1.15.1.cwl/tabix/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#bcftools_tabix_1.15.1.cwl/tabix/preset",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-p"
                    },
                    "doc": "input file type can be gff, bed, sam or vcf"
                },
                {
                    "id": "#bcftools_tabix_1.15.1.cwl/tabix/input",
                    "type": "File",
                    "inputBinding": {
                        "position": 99
                    },
                    "doc": "Input bgziped file"
                }
            ],
            "outputs": [
                {
                    "id": "#bcftools_tabix_1.15.1.cwl/tabix/tabixIndex",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "$(inputs.input.basename)"
                    },
                    "secondaryFiles": [
                        ".tbi"
                    ]
                }
            ],
            "label": "tabix",
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 4000,
                    "coresMin": 1
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/bcftools:1.15.1"
                },
                {
                    "class": "InitialWorkDirRequirement",
                    "listing": [
                        "$(inputs.input)"
                    ]
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
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sivaprk@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Karthigayini Sivaprakasam"
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
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sivaprk@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Karthigayini Sivaprakasam"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "tabix",
                    "http://usefulinc.com/ns/doap#revision": "1.15.1"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "baseCommand": [
                "pv"
            ],
            "inputs": [
                {
                    "id": "#pv_vardict_single_filter.cwl/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#pv_vardict_single_filter.cwl/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#pv_vardict_single_filter.cwl/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#pv_vardict_single_filter.cwl/inputVCF",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-i",
                        "shellQuote": false
                    },
                    "doc": "Input vardict vcf to be filtered"
                },
                {
                    "id": "#pv_vardict_single_filter.cwl/tsampleName",
                    "type": "string",
                    "inputBinding": {
                        "position": 1,
                        "prefix": "--tsampleName",
                        "shellQuote": false
                    },
                    "doc": "Name of the tumor Sample"
                },
                {
                    "id": "#pv_vardict_single_filter.cwl/alleledepth",
                    "type": "int",
                    "inputBinding": {
                        "position": 2,
                        "prefix": "-ad",
                        "shellQuote": false
                    }
                },
                {
                    "id": "#pv_vardict_single_filter.cwl/totalDepth",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 2,
                        "prefix": "-dp",
                        "shellQuote": false
                    },
                    "doc": "Tumor total depth threshold"
                },
                {
                    "id": "#pv_vardict_single_filter.cwl/tnRatio",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 2,
                        "prefix": "-tnr",
                        "shellQuote": false
                    },
                    "doc": "Tumor-Normal variant fraction ratio threshold"
                },
                {
                    "id": "#pv_vardict_single_filter.cwl/variantFraction",
                    "type": [
                        "null",
                        "float"
                    ],
                    "inputBinding": {
                        "position": 2,
                        "prefix": "-vf",
                        "shellQuote": false
                    },
                    "doc": "Tumor variant fraction threshold"
                },
                {
                    "id": "#pv_vardict_single_filter.cwl/minQual",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 2,
                        "prefix": "-mq"
                    },
                    "doc": "Minimum variant call quality"
                },
                {
                    "id": "#pv_vardict_single_filter.cwl/filterGermline",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 2,
                        "prefix": "-fg"
                    },
                    "doc": "Whether to remove calls without 'somatic' status"
                }
            ],
            "outputs": [
                {
                    "id": "#pv_vardict_single_filter.cwl/txt",
                    "type": "File",
                    "outputBinding": {
                        "glob": "*_STDfilter.txt"
                    }
                },
                {
                    "id": "#pv_vardict_single_filter.cwl/vcf_complex",
                    "type": "File",
                    "outputBinding": {
                        "glob": "*_STDfilter_complex.vcf"
                    }
                },
                {
                    "id": "#pv_vardict_single_filter.cwl/vcf",
                    "type": "File",
                    "outputBinding": {
                        "glob": "*_STDfilter.vcf"
                    }
                }
            ],
            "arguments": [
                "vardict",
                "single",
                "filter"
            ],
            "requirements": [
                {
                    "class": "ShellCommandRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "ramMin": 40000,
                    "coresMin": 4
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "hints": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/postprocessing_variant_calls:0.1.4"
                }
            ],
            "id": "#pv_vardict_single_filter.cwl",
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:buehlere@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Eric Buehler"
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
                    "http://usefulinc.com/ns/doap#name": "postprocessing_variant_calls",
                    "http://usefulinc.com/ns/doap#revision": "0.0.1"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#teststrandbias.cwl",
            "baseCommand": [
                "Rscript",
                "/usr/bin/vardict/bin/teststrandbias.R"
            ],
            "inputs": [
                {
                    "id": "#teststrandbias.cwl/teststrandbias/input_vardict",
                    "type": "File",
                    "doc": "Stdard input from VarDict"
                }
            ],
            "outputs": [
                {
                    "id": "#teststrandbias.cwl/teststrandbias/output_var",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "output_teststrandbias.var"
                    }
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 12000,
                    "coresMin": 2
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/vardictjava:1.8.2"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "stdin": "$(inputs.input_vardict.path)",
            "stdout": "output_teststrandbias.var",
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:vurals@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Suleyman Vural"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                },
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
                },
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
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:kumarn1@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Nikhil Kumar"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "Vardictjava",
                    "http://usefulinc.com/ns/doap#revision": "1.8.2"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#var_to_vcf.cwl",
            "baseCommand": [
                "perl",
                "/usr/bin/vardict/bin/var2vcf_valid.pl"
            ],
            "inputs": [
                {
                    "id": "#var_to_vcf.cwl/vardict_var2vcf/case_sample_name",
                    "type": "string",
                    "doc": "The case sample name to be used directly."
                },
                {
                    "id": "#var_to_vcf.cwl/vardict_var2vcf/control_sample_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "The case sample name to be used directly."
                },
                {
                    "id": "#var_to_vcf.cwl/vardict_var2vcf/filter_variants",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-S"
                    },
                    "doc": "If set variants that didnt pass filters will not be present in VCF file."
                },
                {
                    "id": "#var_to_vcf.cwl/vardict_var2vcf/minimum_allele_frequency",
                    "type": [
                        "null",
                        "float"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-f"
                    },
                    "doc": "The threshold for allele frequency, default - 0.05 or 5%%"
                },
                {
                    "id": "#var_to_vcf.cwl/vardict_var2vcf/input_vcf",
                    "type": "File"
                },
                {
                    "id": "#var_to_vcf.cwl/vardict_var2vcf/output_vcf",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "output vcf file"
                }
            ],
            "outputs": [
                {
                    "id": "#var_to_vcf.cwl/vardict_var2vcf/output",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${ \n    if(inputs.output_vcf)\n        return inputs.output_vcf; \n    return inputs.case_sample_name + \"_vardict.vcf\"\n}"
                    }
                }
            ],
            "arguments": [
                {
                    "position": 0,
                    "prefix": "-N",
                    "valueFrom": "${\n    if(inputs.control_sample_name)\n        return inputs.case_sample_name + \"|\" + inputs.control_sample_name;\n    return inputs.case_sample_name\n}"
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 32000,
                    "coresMin": 4
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/vardictjava:1.8.2"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "stdin": "$(inputs.input_vcf.path)",
            "stdout": "${ \n    if(inputs.output_vcf)\n        return inputs.output_vcf; \n    return inputs.case_sample_name + \"_vardict.vcf\"\n}",
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:vurals@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Suleyman Vural"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                },
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
                },
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
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:kumarn1@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Nikhil Kumar"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "Vardictjava",
                    "http://usefulinc.com/ns/doap#revision": "1.8.2"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#vardict_app.cwl",
            "baseCommand": [
                "/usr/bin/vardict/bin/VarDict"
            ],
            "inputs": [
                {
                    "id": "#vardict_app.cwl/vardict/bed_file_column_for_region_end",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-E"
                    },
                    "doc": "The column for region end, e.g. gene end"
                },
                {
                    "id": "#vardict_app.cwl/vardict/reference_fasta",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-G"
                    },
                    "doc": "The reference fasta. Should be indexed (.fai)",
                    "secondaryFiles": [
                        ".fai"
                    ]
                },
                {
                    "id": "#vardict_app.cwl/vardict/sample_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-N"
                    },
                    "doc": "The sample name of the case to be used directly.  Will overwrite -n option"
                },
                {
                    "id": "#vardict_app.cwl/vardict/bed_file_column_for_region_start",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-S"
                    },
                    "doc": "The column for region start, e.g. gene start"
                },
                {
                    "id": "#vardict_app.cwl/vardict/input_bam_case",
                    "type": "File",
                    "doc": "The indexed BAM file for case",
                    "secondaryFiles": [
                        "^.bai"
                    ]
                },
                {
                    "id": "#vardict_app.cwl/vardict/input_bam_control",
                    "type": [
                        "null",
                        "File"
                    ],
                    "doc": "The indexed BAM file for control",
                    "secondaryFiles": [
                        "^.bai"
                    ]
                },
                {
                    "id": "#vardict_app.cwl/vardict/bedfile",
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "position": 1
                    }
                },
                {
                    "id": "#vardict_app.cwl/vardict/bed_file_column_for_chromsome",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-c"
                    },
                    "doc": "The column for chromosome"
                },
                {
                    "id": "#vardict_app.cwl/vardict/allele_frequency_threshold",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-f"
                    },
                    "doc": "The threshold for allele frequency, default - 0.01 or 1%%"
                },
                {
                    "id": "#vardict_app.cwl/vardict/bed_file_column_for_gene_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-g"
                    },
                    "doc": "The column for gene name, or segment annotation"
                }
            ],
            "outputs": [
                {
                    "id": "#vardict_app.cwl/vardict/output",
                    "type": "File",
                    "outputBinding": {
                        "glob": "vardict_app_output.vcf"
                    }
                }
            ],
            "arguments": [
                {
                    "position": 1,
                    "prefix": "-b",
                    "valueFrom": "${\n    if(inputs.input_bam_control)\n        return inputs.input_bam_case + \"|\" + inputs.input_bam_control;\n    return inputs.input_bam_case \n\n}"
                }
            ],
            "requirements": [
                {
                    "class": "EnvVarRequirement",
                    "envDef": [
                        {
                            "envValue": "\"-Xms8g\" \"-Xmx95g\"",
                            "envName": "JAVA_OPTS"
                        }
                    ]
                },
                {
                    "class": "ResourceRequirement",
                    "ramMin": 64000,
                    "coresMin": 4
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/vardictjava:1.8.2"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "stdout": "vardict_app_output.vcf",
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:vurals@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Suleyman Vural"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                },
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
                },
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
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:kumarn1@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Nikhil Kumar"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "Vardictjava",
                    "http://usefulinc.com/ns/doap#revision": "1.8.2"
                }
            ]
        },
        {
            "class": "Workflow",
            "id": "#vardict_single_sample.cwl",
            "label": "vardict",
            "inputs": [
                {
                    "id": "#vardict_single_sample.cwl/vardict/bedfile",
                    "type": [
                        "null",
                        "File"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 426.4375
                },
                {
                    "id": "#vardict_single_sample.cwl/vardict/input_bam_control",
                    "type": [
                        "null",
                        "File"
                    ],
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 213.21875
                },
                {
                    "id": "#vardict_single_sample.cwl/vardict/input_bam_case",
                    "type": "File",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 319.828125
                },
                {
                    "id": "#vardict_single_sample.cwl/vardict/reference_fasta",
                    "type": "File",
                    "secondaryFiles": [
                        ".fai"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 106.609375
                },
                {
                    "id": "#vardict_single_sample.cwl/vardict/sample_name",
                    "type": "string",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 0
                },
                {
                    "id": "#vardict_single_sample.cwl/vardict/bed_file_column_for_region_start",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 533.109375
                },
                {
                    "id": "#vardict_single_sample.cwl/vardict/bed_file_column_for_region_end",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 639.84375
                },
                {
                    "id": "#vardict_single_sample.cwl/vardict/bed_file_column_for_gene_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 746.578125
                },
                {
                    "id": "#vardict_single_sample.cwl/vardict/bed_file_column_for_chromsome",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 853.25
                },
                {
                    "id": "#vardict_single_sample.cwl/vardict/control_sample_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 742.6807250976562,
                    "https://www.sevenbridges.com/y": 639.90625
                },
                {
                    "id": "#vardict_single_sample.cwl/vardict/filter_variants",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 742.6807250976562,
                    "https://www.sevenbridges.com/y": 533.296875
                },
                {
                    "id": "#vardict_single_sample.cwl/vardict/minimum_allele_frequency",
                    "type": [
                        "null",
                        "float"
                    ],
                    "https://www.sevenbridges.com/x": 742.6807250976562,
                    "https://www.sevenbridges.com/y": 426.625
                },
                {
                    "id": "#vardict_single_sample.cwl/vardict/output_vcf",
                    "type": "string",
                    "https://www.sevenbridges.com/x": 742.6807250976562,
                    "https://www.sevenbridges.com/y": 319.953125
                }
            ],
            "outputs": [
                {
                    "id": "#vardict_single_sample.cwl/vardict/output",
                    "outputSource": [
                        "#vardict_single_sample.cwl/vardict/var_to_vcf/output"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 1332.159423828125,
                    "https://www.sevenbridges.com/y": 426.625
                }
            ],
            "steps": [
                {
                    "id": "#vardict_single_sample.cwl/vardict/teststrandbias",
                    "in": [
                        {
                            "id": "#vardict_single_sample.cwl/vardict/teststrandbias/input_vardict",
                            "source": "#vardict_single_sample.cwl/vardict/vardict/output"
                        }
                    ],
                    "out": [
                        {
                            "id": "#vardict_single_sample.cwl/vardict/teststrandbias/output_var"
                        }
                    ],
                    "run": "#teststrandbias.cwl",
                    "https://www.sevenbridges.com/x": 742.6807250976562,
                    "https://www.sevenbridges.com/y": 213.34375
                },
                {
                    "id": "#vardict_single_sample.cwl/vardict/var_to_vcf",
                    "in": [
                        {
                            "id": "#vardict_single_sample.cwl/vardict/var_to_vcf/case_sample_name",
                            "source": "#vardict_single_sample.cwl/vardict/sample_name"
                        },
                        {
                            "id": "#vardict_single_sample.cwl/vardict/var_to_vcf/control_sample_name",
                            "source": "#vardict_single_sample.cwl/vardict/control_sample_name"
                        },
                        {
                            "id": "#vardict_single_sample.cwl/vardict/var_to_vcf/filter_variants",
                            "source": "#vardict_single_sample.cwl/vardict/filter_variants"
                        },
                        {
                            "id": "#vardict_single_sample.cwl/vardict/var_to_vcf/minimum_allele_frequency",
                            "source": "#vardict_single_sample.cwl/vardict/minimum_allele_frequency"
                        },
                        {
                            "id": "#vardict_single_sample.cwl/vardict/var_to_vcf/input_vcf",
                            "source": "#vardict_single_sample.cwl/vardict/teststrandbias/output_var"
                        },
                        {
                            "id": "#vardict_single_sample.cwl/vardict/var_to_vcf/output_vcf",
                            "source": "#vardict_single_sample.cwl/vardict/output_vcf"
                        }
                    ],
                    "out": [
                        {
                            "id": "#vardict_single_sample.cwl/vardict/var_to_vcf/output"
                        }
                    ],
                    "run": "#var_to_vcf.cwl",
                    "https://www.sevenbridges.com/x": 1006.1338500976562,
                    "https://www.sevenbridges.com/y": 391.4296875
                },
                {
                    "id": "#vardict_single_sample.cwl/vardict/vardict",
                    "in": [
                        {
                            "id": "#vardict_single_sample.cwl/vardict/vardict/bed_file_column_for_region_end",
                            "source": "#vardict_single_sample.cwl/vardict/bed_file_column_for_region_end"
                        },
                        {
                            "id": "#vardict_single_sample.cwl/vardict/vardict/reference_fasta",
                            "source": "#vardict_single_sample.cwl/vardict/reference_fasta"
                        },
                        {
                            "id": "#vardict_single_sample.cwl/vardict/vardict/sample_name",
                            "source": "#vardict_single_sample.cwl/vardict/sample_name"
                        },
                        {
                            "id": "#vardict_single_sample.cwl/vardict/vardict/bed_file_column_for_region_start",
                            "source": "#vardict_single_sample.cwl/vardict/bed_file_column_for_region_start"
                        },
                        {
                            "id": "#vardict_single_sample.cwl/vardict/vardict/input_bam_case",
                            "source": "#vardict_single_sample.cwl/vardict/input_bam_case"
                        },
                        {
                            "id": "#vardict_single_sample.cwl/vardict/vardict/input_bam_control",
                            "source": "#vardict_single_sample.cwl/vardict/input_bam_control"
                        },
                        {
                            "id": "#vardict_single_sample.cwl/vardict/vardict/bedfile",
                            "source": "#vardict_single_sample.cwl/vardict/bedfile"
                        },
                        {
                            "id": "#vardict_single_sample.cwl/vardict/vardict/bed_file_column_for_chromsome",
                            "source": "#vardict_single_sample.cwl/vardict/bed_file_column_for_chromsome"
                        },
                        {
                            "id": "#vardict_single_sample.cwl/vardict/vardict/bed_file_column_for_gene_name",
                            "source": "#vardict_single_sample.cwl/vardict/bed_file_column_for_gene_name"
                        }
                    ],
                    "out": [
                        {
                            "id": "#vardict_single_sample.cwl/vardict/vardict/output"
                        }
                    ],
                    "run": "#vardict_app.cwl",
                    "https://www.sevenbridges.com/x": 317.125,
                    "https://www.sevenbridges.com/y": 363.625
                }
            ],
            "requirements": [],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:vurals@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Suleyman Vural"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                },
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
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:kumarn1@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Nikhil Kumar"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "Vardictjava",
                    "http://usefulinc.com/ns/doap#revision": "1.8.2"
                }
            ]
        },
        {
            "class": "Workflow",
            "id": "#main",
            "label": "run_processed_vardict.cwl",
            "inputs": [
                {
                    "id": "#main/reference_fasta",
                    "type": "File",
                    "secondaryFiles": [
                        ".fai"
                    ],
                    "https://www.sevenbridges.com/x": -634.5714111328125,
                    "https://www.sevenbridges.com/y": 149.14285278320312
                },
                {
                    "id": "#main/input_bam_case",
                    "type": "File",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/x": -699,
                    "https://www.sevenbridges.com/y": -149
                },
                {
                    "id": "#main/bedfile",
                    "type": [
                        "null",
                        "File"
                    ],
                    "https://www.sevenbridges.com/x": -636.4950561523438,
                    "https://www.sevenbridges.com/y": -36.49504852294922
                },
                {
                    "id": "#main/sample_name",
                    "type": "string",
                    "https://www.sevenbridges.com/x": -295,
                    "https://www.sevenbridges.com/y": -483.5596008300781
                },
                {
                    "id": "#main/concat_output_name",
                    "type": "string",
                    "https://www.sevenbridges.com/x": 20.6474609375,
                    "https://www.sevenbridges.com/y": 102.47994995117188
                },
                {
                    "id": "#main/stdout",
                    "type": "boolean",
                    "https://www.sevenbridges.com/x": 109.83137512207031,
                    "https://www.sevenbridges.com/y": -20.80786895751953
                },
                {
                    "id": "#main/vardict_output_vcf_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": -596.02392578125,
                    "https://www.sevenbridges.com/y": -291.1067810058594
                }
            ],
            "outputs": [
                {
                    "id": "#main/txt",
                    "outputSource": [
                        "#main/pv_vardict_single_filter/txt"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 208.52406311035156,
                    "https://www.sevenbridges.com/y": -167.63339233398438
                },
                {
                    "id": "#main/concatenated_vcf",
                    "outputSource": [
                        "#main/variants_concat/concatenated_vcf"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 493.2825012207031,
                    "https://www.sevenbridges.com/y": 131.36968994140625
                }
            ],
            "steps": [
                {
                    "id": "#main/vardict",
                    "in": [
                        {
                            "id": "#main/vardict/bedfile",
                            "source": "#main/bedfile"
                        },
                        {
                            "id": "#main/vardict/input_bam_case",
                            "source": "#main/input_bam_case"
                        },
                        {
                            "id": "#main/vardict/reference_fasta",
                            "source": "#main/reference_fasta"
                        },
                        {
                            "id": "#main/vardict/sample_name",
                            "source": "#main/sample_name"
                        },
                        {
                            "id": "#main/vardict/bed_file_column_for_region_start",
                            "default": "2"
                        },
                        {
                            "id": "#main/vardict/bed_file_column_for_region_end",
                            "default": "3"
                        },
                        {
                            "id": "#main/vardict/bed_file_column_for_gene_name",
                            "default": "4"
                        },
                        {
                            "id": "#main/vardict/bed_file_column_for_chromsome",
                            "default": "1"
                        },
                        {
                            "id": "#main/vardict/filter_variants",
                            "default": true
                        },
                        {
                            "id": "#main/vardict/minimum_allele_frequency",
                            "default": 0.01
                        },
                        {
                            "id": "#main/vardict/output_vcf",
                            "source": "#main/vardict_output_vcf_name"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/vardict/output"
                        }
                    ],
                    "run": "#vardict_single_sample.cwl",
                    "label": "vardict",
                    "https://www.sevenbridges.com/x": -411.7029724121094,
                    "https://www.sevenbridges.com/y": -187.75247192382812
                },
                {
                    "id": "#main/pv_vardict_single_filter",
                    "in": [
                        {
                            "id": "#main/pv_vardict_single_filter/inputVCF",
                            "source": "#main/vardict/output"
                        },
                        {
                            "id": "#main/pv_vardict_single_filter/tsampleName",
                            "source": "#main/sample_name"
                        },
                        {
                            "id": "#main/pv_vardict_single_filter/alleledepth",
                            "default": 1
                        },
                        {
                            "id": "#main/pv_vardict_single_filter/totalDepth",
                            "default": 20
                        },
                        {
                            "id": "#main/pv_vardict_single_filter/tnRatio",
                            "default": 5
                        },
                        {
                            "id": "#main/pv_vardict_single_filter/variantFraction",
                            "default": 0.04
                        },
                        {
                            "id": "#main/pv_vardict_single_filter/minQual",
                            "default": 20
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/pv_vardict_single_filter/txt"
                        },
                        {
                            "id": "#main/pv_vardict_single_filter/vcf_complex"
                        },
                        {
                            "id": "#main/pv_vardict_single_filter/vcf"
                        }
                    ],
                    "run": "#pv_vardict_single_filter.cwl",
                    "https://www.sevenbridges.com/x": 1.4255318641662598,
                    "https://www.sevenbridges.com/y": -197.1702117919922
                },
                {
                    "id": "#main/variants_concat",
                    "in": [
                        {
                            "id": "#main/variants_concat/fastaRef",
                            "source": "#main/reference_fasta"
                        },
                        {
                            "id": "#main/variants_concat/input",
                            "source": "#main/pv_vardict_single_filter/vcf"
                        },
                        {
                            "id": "#main/variants_concat/check_ref",
                            "default": "s"
                        },
                        {
                            "id": "#main/variants_concat/multiallelics",
                            "default": "-any"
                        },
                        {
                            "id": "#main/variants_concat/output_type",
                            "default": "z"
                        },
                        {
                            "id": "#main/variants_concat/preset",
                            "default": "vcf"
                        },
                        {
                            "id": "#main/variants_concat/complex_input",
                            "source": "#main/pv_vardict_single_filter/vcf_complex"
                        },
                        {
                            "id": "#main/variants_concat/output_name",
                            "source": "#main/concat_output_name"
                        },
                        {
                            "id": "#main/variants_concat/allow_overlaps",
                            "default": true
                        },
                        {
                            "id": "#main/variants_concat/stdout",
                            "source": "#main/stdout"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/variants_concat/concatenated_vcf"
                        }
                    ],
                    "run": "#variants_concat.cwl",
                    "label": "variants_concat",
                    "https://www.sevenbridges.com/x": 337.0436706542969,
                    "https://www.sevenbridges.com/y": 125.96643829345703
                }
            ],
            "requirements": [
                {
                    "class": "SubworkflowFeatureRequirement"
                }
            ],
            "https://schema.org/author": [
                {
                    "class": "https://schema.org/Person",
                    "https://schema.org/email": "mailto:sivaprk@mskcc.org",
                    "https://schema.org/identifier": "",
                    "https://schema.org/name": "Karthigayini Sivaprakasam"
                }
            ],
            "https://schema.org/citation": "",
            "https://schema.org/codeRepository": "https://github.com/msk-access/cwl_subworkflows/vardict_workflow",
            "https://schema.org/contributor": [
                {
                    "class": "https://schema.org/Person",
                    "https://schema.org/email": "mailto:sivaprk@mskcc.org",
                    "https://schema.org/identifier": "",
                    "https://schema.org/name": "Karthigayini Sivaprakasam"
                },
                {
                    "class": "https://schema.org/Person",
                    "https://schema.org/email": "mailto:shahr@mskcc.org",
                    "https://schema.org/identifier": "",
                    "https://schema.org/name": "Ronak Shah"
                }
            ],
            "https://schema.org/dateCreated": "2020-07-13",
            "https://schema.org/license": "https://spdx.org/licenses/Apache-2.0"
        },
        {
            "class": "Workflow",
            "id": "#variant_normalize_sort.cwl",
            "label": "variant_normalize_sort",
            "inputs": [
                {
                    "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/input",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 427.6875
                },
                {
                    "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/fastaRef",
                    "type": "File",
                    "secondaryFiles": [
                        ".fai"
                    ],
                    "https://www.sevenbridges.com/x": 506.94903564453125,
                    "https://www.sevenbridges.com/y": 374.2265625
                },
                {
                    "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/stdout",
                    "type": "boolean",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 0
                },
                {
                    "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/bgzip_output_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 534.609375
                },
                {
                    "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/preset",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 231.125,
                    "https://www.sevenbridges.com/y": 246.3046875
                },
                {
                    "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/output_type",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 213.84375
                },
                {
                    "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/norm_output_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 320.765625
                },
                {
                    "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/multiallelics",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 506.94903564453125,
                    "https://www.sevenbridges.com/y": 267.3046875
                },
                {
                    "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/check_ref",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 506.94903564453125,
                    "https://www.sevenbridges.com/y": 481.1484375
                },
                {
                    "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/sort_output_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 106.921875
                }
            ],
            "outputs": [
                {
                    "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/bgzip_normalize_sort_output",
                    "outputSource": [
                        "#variant_normalize_sort.cwl/bgzip_normalize_sort/tabix_2/tabixIndex"
                    ],
                    "type": [
                        "null",
                        "File"
                    ],
                    "secondaryFiles": [
                        ".tbi"
                    ],
                    "https://www.sevenbridges.com/x": 1623.7470703125,
                    "https://www.sevenbridges.com/y": 320.765625
                }
            ],
            "steps": [
                {
                    "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/bgzip",
                    "in": [
                        {
                            "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/bgzip/stdout",
                            "source": "#variant_normalize_sort.cwl/bgzip_normalize_sort/stdout"
                        },
                        {
                            "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/bgzip/input",
                            "source": "#variant_normalize_sort.cwl/bgzip_normalize_sort/input"
                        },
                        {
                            "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/bgzip/output_file_name",
                            "source": "#variant_normalize_sort.cwl/bgzip_normalize_sort/bgzip_output_name"
                        }
                    ],
                    "out": [
                        {
                            "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/bgzip/zippedVcf"
                        }
                    ],
                    "run": "#bcftools_bgzip_1.15.1.cwl",
                    "label": "bgzip",
                    "https://www.sevenbridges.com/x": 231.125,
                    "https://www.sevenbridges.com/y": 374.2265625
                },
                {
                    "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/tabix",
                    "in": [
                        {
                            "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/tabix/preset",
                            "source": "#variant_normalize_sort.cwl/bgzip_normalize_sort/preset"
                        },
                        {
                            "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/tabix/input",
                            "source": "#variant_normalize_sort.cwl/bgzip_normalize_sort/bgzip/zippedVcf"
                        }
                    ],
                    "out": [
                        {
                            "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/tabix/tabixIndex"
                        }
                    ],
                    "run": "#bcftools_tabix_1.15.1.cwl",
                    "label": "tabix",
                    "https://www.sevenbridges.com/x": 506.94903564453125,
                    "https://www.sevenbridges.com/y": 153.3828125
                },
                {
                    "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/norm",
                    "in": [
                        {
                            "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/norm/check_ref",
                            "source": "#variant_normalize_sort.cwl/bgzip_normalize_sort/check_ref"
                        },
                        {
                            "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/norm/multiallelics",
                            "source": "#variant_normalize_sort.cwl/bgzip_normalize_sort/multiallelics"
                        },
                        {
                            "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/norm/output_type",
                            "source": "#variant_normalize_sort.cwl/bgzip_normalize_sort/output_type"
                        },
                        {
                            "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/norm/output_name",
                            "source": "#variant_normalize_sort.cwl/bgzip_normalize_sort/norm_output_name"
                        },
                        {
                            "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/norm/input",
                            "source": "#variant_normalize_sort.cwl/bgzip_normalize_sort/tabix/tabixIndex"
                        },
                        {
                            "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/norm/fastaRef",
                            "source": "#variant_normalize_sort.cwl/bgzip_normalize_sort/fastaRef"
                        }
                    ],
                    "out": [
                        {
                            "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/norm/normalized_vcf"
                        }
                    ],
                    "run": "#bcftools_norm_1.15.1.cwl",
                    "label": "bcftools_norm",
                    "https://www.sevenbridges.com/x": 697.1942749023438,
                    "https://www.sevenbridges.com/y": 285.765625
                },
                {
                    "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/tabix_1",
                    "in": [
                        {
                            "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/tabix_1/preset",
                            "source": "#variant_normalize_sort.cwl/bgzip_normalize_sort/preset"
                        },
                        {
                            "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/tabix_1/input",
                            "source": "#variant_normalize_sort.cwl/bgzip_normalize_sort/norm/normalized_vcf"
                        }
                    ],
                    "out": [
                        {
                            "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/tabix_1/tabixIndex"
                        }
                    ],
                    "run": "#bcftools_tabix_1.15.1.cwl",
                    "label": "tabix",
                    "https://www.sevenbridges.com/x": 998.9910278320312,
                    "https://www.sevenbridges.com/y": 313.765625
                },
                {
                    "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/bcftools_sort",
                    "in": [
                        {
                            "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/bcftools_sort/output_name",
                            "source": "#variant_normalize_sort.cwl/bgzip_normalize_sort/sort_output_name"
                        },
                        {
                            "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/bcftools_sort/output_type",
                            "source": "#variant_normalize_sort.cwl/bgzip_normalize_sort/output_type"
                        },
                        {
                            "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/bcftools_sort/input",
                            "source": "#variant_normalize_sort.cwl/bgzip_normalize_sort/tabix_1/tabixIndex"
                        }
                    ],
                    "out": [
                        {
                            "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/bcftools_sort/sorted_file"
                        }
                    ],
                    "run": "#bcftools_sort._1.15.1.cwl",
                    "label": "bcftools_sort",
                    "https://www.sevenbridges.com/x": 1189.236328125,
                    "https://www.sevenbridges.com/y": 306.765625
                },
                {
                    "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/tabix_2",
                    "in": [
                        {
                            "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/tabix_2/preset",
                            "source": "#variant_normalize_sort.cwl/bgzip_normalize_sort/preset"
                        },
                        {
                            "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/tabix_2/input",
                            "source": "#variant_normalize_sort.cwl/bgzip_normalize_sort/bcftools_sort/sorted_file"
                        }
                    ],
                    "out": [
                        {
                            "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/tabix_2/tabixIndex"
                        }
                    ],
                    "run": "#bcftools_tabix_1.15.1.cwl",
                    "label": "tabix",
                    "https://www.sevenbridges.com/x": 1433.501953125,
                    "https://www.sevenbridges.com/y": 313.765625
                }
            ],
            "requirements": [],
            "https://schema.org/author": [
                {
                    "class": "https://schema.org/Person",
                    "https://schema.org/email": "mailto:sivaprk@mskcc.org",
                    "https://schema.org/identifier": "",
                    "https://schema.org/name": "Karthigayini Sivaprakasam"
                }
            ],
            "https://schema.org/citation": "",
            "https://schema.org/codeRepository": "https://github.com/msk-access/cwl_subworkflows/variant_postprocessing",
            "https://schema.org/contributor": [
                {
                    "class": "https://schema.org/Person",
                    "https://schema.org/email": "mailto:sivaprk@mskcc.org",
                    "https://schema.org/identifier": "",
                    "https://schema.org/name": "Karthigayini Sivaprakasam"
                },
                {
                    "class": "https://schema.org/Person",
                    "https://schema.org/email": "mailto:shahr@mskcc.org",
                    "https://schema.org/identifier": "",
                    "https://schema.org/name": "Ronak Shah"
                }
            ],
            "https://schema.org/dateCreated": "2020-13-7",
            "https://schema.org/license": "https://spdx.org/licenses/Apache-2.0"
        },
        {
            "class": "Workflow",
            "id": "#variant_sort.cwl",
            "label": "variant_sort",
            "inputs": [
                {
                    "id": "#variant_sort.cwl/bgzip_sort/input",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 321
                },
                {
                    "id": "#variant_sort.cwl/bgzip_sort/stdout",
                    "type": "boolean",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 0
                },
                {
                    "id": "#variant_sort.cwl/bgzip_sort/bgzip_output_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 428
                },
                {
                    "id": "#variant_sort.cwl/bgzip_sort/preset",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 206.859375,
                    "https://www.sevenbridges.com/y": 146.5
                },
                {
                    "id": "#variant_sort.cwl/bgzip_sort/output_type",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 214
                },
                {
                    "id": "#variant_sort.cwl/bgzip_sort/sort_output_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 107
                }
            ],
            "outputs": [
                {
                    "id": "#variant_sort.cwl/bgzip_sort/bgzip_sorted_output",
                    "outputSource": [
                        "#variant_sort.cwl/bgzip_sort/tabix_1/tabixIndex"
                    ],
                    "type": [
                        "null",
                        "File"
                    ],
                    "secondaryFiles": [
                        ".tbi"
                    ],
                    "https://www.sevenbridges.com/x": 1095.162353515625,
                    "https://www.sevenbridges.com/y": 214
                }
            ],
            "steps": [
                {
                    "id": "#variant_sort.cwl/bgzip_sort/bgzip",
                    "in": [
                        {
                            "id": "#variant_sort.cwl/bgzip_sort/bgzip/stdout",
                            "source": "#variant_sort.cwl/bgzip_sort/stdout"
                        },
                        {
                            "id": "#variant_sort.cwl/bgzip_sort/bgzip/input",
                            "source": "#variant_sort.cwl/bgzip_sort/input"
                        },
                        {
                            "id": "#variant_sort.cwl/bgzip_sort/bgzip/output_file_name",
                            "source": "#variant_sort.cwl/bgzip_sort/bgzip_output_name"
                        }
                    ],
                    "out": [
                        {
                            "id": "#variant_sort.cwl/bgzip_sort/bgzip/zippedVcf"
                        }
                    ],
                    "run": "#bcftools_bgzip_1.15.1.cwl",
                    "label": "bgzip",
                    "https://www.sevenbridges.com/x": 206.859375,
                    "https://www.sevenbridges.com/y": 267.5
                },
                {
                    "id": "#variant_sort.cwl/bgzip_sort/bcftools_sort",
                    "in": [
                        {
                            "id": "#variant_sort.cwl/bgzip_sort/bcftools_sort/output_name",
                            "source": "#variant_sort.cwl/bgzip_sort/sort_output_name"
                        },
                        {
                            "id": "#variant_sort.cwl/bgzip_sort/bcftools_sort/output_type",
                            "source": "#variant_sort.cwl/bgzip_sort/output_type"
                        },
                        {
                            "id": "#variant_sort.cwl/bgzip_sort/bcftools_sort/input",
                            "source": "#variant_sort.cwl/bgzip_sort/tabix/tabixIndex"
                        }
                    ],
                    "out": [
                        {
                            "id": "#variant_sort.cwl/bgzip_sort/bcftools_sort/sorted_file"
                        }
                    ],
                    "run": "#bcftools_sort._1.15.1.cwl",
                    "label": "bcftools_sort",
                    "https://www.sevenbridges.com/x": 660.6514892578125,
                    "https://www.sevenbridges.com/y": 200
                },
                {
                    "id": "#variant_sort.cwl/bgzip_sort/tabix",
                    "in": [
                        {
                            "id": "#variant_sort.cwl/bgzip_sort/tabix/preset",
                            "source": "#variant_sort.cwl/bgzip_sort/preset"
                        },
                        {
                            "id": "#variant_sort.cwl/bgzip_sort/tabix/input",
                            "source": "#variant_sort.cwl/bgzip_sort/bgzip/zippedVcf"
                        }
                    ],
                    "out": [
                        {
                            "id": "#variant_sort.cwl/bgzip_sort/tabix/tabixIndex"
                        }
                    ],
                    "run": "#bcftools_tabix_1.15.1.cwl",
                    "label": "tabix",
                    "https://www.sevenbridges.com/x": 470.40625,
                    "https://www.sevenbridges.com/y": 207
                },
                {
                    "id": "#variant_sort.cwl/bgzip_sort/tabix_1",
                    "in": [
                        {
                            "id": "#variant_sort.cwl/bgzip_sort/tabix_1/preset",
                            "source": "#variant_sort.cwl/bgzip_sort/preset"
                        },
                        {
                            "id": "#variant_sort.cwl/bgzip_sort/tabix_1/input",
                            "source": "#variant_sort.cwl/bgzip_sort/bcftools_sort/sorted_file"
                        }
                    ],
                    "out": [
                        {
                            "id": "#variant_sort.cwl/bgzip_sort/tabix_1/tabixIndex"
                        }
                    ],
                    "run": "#bcftools_tabix_1.15.1.cwl",
                    "label": "tabix",
                    "https://www.sevenbridges.com/x": 904.9171142578125,
                    "https://www.sevenbridges.com/y": 207
                }
            ],
            "requirements": [],
            "https://schema.org/author": [
                {
                    "class": "https://schema.org/Person",
                    "https://schema.org/email": "mailto:sivaprk@mskcc.org",
                    "https://schema.org/identifier": "",
                    "https://schema.org/name": "Karthigayini Sivaprakasam"
                }
            ],
            "https://schema.org/citation": "",
            "https://schema.org/codeRepository": "https://github.com/msk-access/cwl_subworkflows/variant_postprocessing",
            "https://schema.org/contributor": [
                {
                    "class": "https://schema.org/Person",
                    "https://schema.org/email": "mailto:sivaprk@mskcc.org",
                    "https://schema.org/identifier": "",
                    "https://schema.org/name": "Karthigayini Sivaprakasam"
                },
                {
                    "class": "https://schema.org/Person",
                    "https://schema.org/email": "mailto:shahr@mskcc.org",
                    "https://schema.org/identifier": "",
                    "https://schema.org/name": "Ronak Shah"
                }
            ],
            "https://schema.org/dateCreated": "2020-07-13",
            "https://schema.org/license": "https://spdx.org/licenses/Apache-2.0"
        },
        {
            "class": "Workflow",
            "id": "#variants_concat.cwl",
            "label": "variants_concat",
            "inputs": [
                {
                    "id": "#variants_concat.cwl/variants_concat/fastaRef",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 853.875
                },
                {
                    "id": "#variants_concat.cwl/variants_concat/input",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 747.140625
                },
                {
                    "id": "#variants_concat.cwl/variants_concat/bgzip_output_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1387.546875
                },
                {
                    "id": "#variants_concat.cwl/variants_concat/check_ref",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1280.8125
                },
                {
                    "id": "#variants_concat.cwl/variants_concat/multiallelics",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 640.40625
                },
                {
                    "id": "#variants_concat.cwl/variants_concat/norm_output_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 533.671875
                },
                {
                    "id": "#variants_concat.cwl/variants_concat/output_type",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 320.203125
                },
                {
                    "id": "#variants_concat.cwl/variants_concat/preset",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 213.46875
                },
                {
                    "id": "#variants_concat.cwl/variants_concat/sort_output_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 106.734375
                },
                {
                    "id": "#variants_concat.cwl/variants_concat/complex_sort_output_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 960.609375
                },
                {
                    "id": "#variants_concat.cwl/variants_concat/complex_input",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1067.34375
                },
                {
                    "id": "#variants_concat.cwl/variants_concat/complex_bgzip_output_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1174.078125
                },
                {
                    "id": "#variants_concat.cwl/variants_concat/output_name",
                    "type": "string",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 426.9375
                },
                {
                    "id": "#variants_concat.cwl/variants_concat/allow_overlaps",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 284.734375,
                    "https://www.sevenbridges.com/y": 863.5078125
                },
                {
                    "id": "#variants_concat.cwl/variants_concat/stdout",
                    "type": "boolean",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 0
                }
            ],
            "outputs": [
                {
                    "id": "#variants_concat.cwl/variants_concat/concatenated_vcf",
                    "outputSource": [
                        "#variants_concat.cwl/variants_concat/bcftools_concat/concatenated_vcf"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 1050.4891357421875,
                    "https://www.sevenbridges.com/y": 693.7734375
                }
            ],
            "steps": [
                {
                    "id": "#variants_concat.cwl/variants_concat/bgzip_normalize_sort",
                    "in": [
                        {
                            "id": "#variants_concat.cwl/variants_concat/bgzip_normalize_sort/input",
                            "source": "#variants_concat.cwl/variants_concat/input"
                        },
                        {
                            "id": "#variants_concat.cwl/variants_concat/bgzip_normalize_sort/fastaRef",
                            "source": "#variants_concat.cwl/variants_concat/fastaRef"
                        },
                        {
                            "id": "#variants_concat.cwl/variants_concat/bgzip_normalize_sort/stdout",
                            "source": "#variants_concat.cwl/variants_concat/stdout"
                        },
                        {
                            "id": "#variants_concat.cwl/variants_concat/bgzip_normalize_sort/bgzip_output_name",
                            "source": "#variants_concat.cwl/variants_concat/bgzip_output_name"
                        },
                        {
                            "id": "#variants_concat.cwl/variants_concat/bgzip_normalize_sort/preset",
                            "source": "#variants_concat.cwl/variants_concat/preset"
                        },
                        {
                            "id": "#variants_concat.cwl/variants_concat/bgzip_normalize_sort/output_type",
                            "source": "#variants_concat.cwl/variants_concat/output_type"
                        },
                        {
                            "id": "#variants_concat.cwl/variants_concat/bgzip_normalize_sort/norm_output_name",
                            "source": "#variants_concat.cwl/variants_concat/norm_output_name"
                        },
                        {
                            "id": "#variants_concat.cwl/variants_concat/bgzip_normalize_sort/multiallelics",
                            "source": "#variants_concat.cwl/variants_concat/multiallelics"
                        },
                        {
                            "id": "#variants_concat.cwl/variants_concat/bgzip_normalize_sort/check_ref",
                            "source": "#variants_concat.cwl/variants_concat/check_ref"
                        },
                        {
                            "id": "#variants_concat.cwl/variants_concat/bgzip_normalize_sort/sort_output_name",
                            "source": "#variants_concat.cwl/variants_concat/sort_output_name"
                        }
                    ],
                    "out": [
                        {
                            "id": "#variants_concat.cwl/variants_concat/bgzip_normalize_sort/bgzip_normalize_sort_output"
                        }
                    ],
                    "run": "#variant_normalize_sort.cwl",
                    "label": "bgzip_normalize_sort",
                    "https://www.sevenbridges.com/x": 284.734375,
                    "https://www.sevenbridges.com/y": 693.7734375
                },
                {
                    "id": "#variants_concat.cwl/variants_concat/bgzip_sort",
                    "in": [
                        {
                            "id": "#variants_concat.cwl/variants_concat/bgzip_sort/input",
                            "source": "#variants_concat.cwl/variants_concat/complex_input"
                        },
                        {
                            "id": "#variants_concat.cwl/variants_concat/bgzip_sort/stdout",
                            "source": "#variants_concat.cwl/variants_concat/stdout"
                        },
                        {
                            "id": "#variants_concat.cwl/variants_concat/bgzip_sort/bgzip_output_name",
                            "source": "#variants_concat.cwl/variants_concat/complex_bgzip_output_name"
                        },
                        {
                            "id": "#variants_concat.cwl/variants_concat/bgzip_sort/preset",
                            "source": "#variants_concat.cwl/variants_concat/preset"
                        },
                        {
                            "id": "#variants_concat.cwl/variants_concat/bgzip_sort/output_type",
                            "source": "#variants_concat.cwl/variants_concat/output_type"
                        },
                        {
                            "id": "#variants_concat.cwl/variants_concat/bgzip_sort/sort_output_name",
                            "source": "#variants_concat.cwl/variants_concat/complex_sort_output_name"
                        }
                    ],
                    "out": [
                        {
                            "id": "#variants_concat.cwl/variants_concat/bgzip_sort/bgzip_sorted_output"
                        }
                    ],
                    "run": "#variant_sort.cwl",
                    "label": "bgzip_sort.cwl",
                    "https://www.sevenbridges.com/x": 284.734375,
                    "https://www.sevenbridges.com/y": 489.0390625
                },
                {
                    "id": "#variants_concat.cwl/variants_concat/bcftools_concat",
                    "in": [
                        {
                            "id": "#variants_concat.cwl/variants_concat/bcftools_concat/allow_overlaps",
                            "source": "#variants_concat.cwl/variants_concat/allow_overlaps"
                        },
                        {
                            "id": "#variants_concat.cwl/variants_concat/bcftools_concat/output_name",
                            "source": "#variants_concat.cwl/variants_concat/output_name"
                        },
                        {
                            "id": "#variants_concat.cwl/variants_concat/bcftools_concat/output_type",
                            "source": "#variants_concat.cwl/variants_concat/output_type"
                        },
                        {
                            "id": "#variants_concat.cwl/variants_concat/bcftools_concat/input",
                            "source": [
                                "#variants_concat.cwl/variants_concat/bgzip_normalize_sort/bgzip_normalize_sort_output",
                                "#variants_concat.cwl/variants_concat/bgzip_sort/bgzip_sorted_output"
                            ]
                        }
                    ],
                    "out": [
                        {
                            "id": "#variants_concat.cwl/variants_concat/bcftools_concat/concatenated_vcf"
                        }
                    ],
                    "run": "#bcftools_concat_1.15.1.cwl",
                    "label": "bcftools_concat",
                    "https://www.sevenbridges.com/x": 755.8057250976562,
                    "https://www.sevenbridges.com/y": 672.7734375
                }
            ],
            "requirements": [
                {
                    "class": "SubworkflowFeatureRequirement"
                },
                {
                    "class": "MultipleInputFeatureRequirement"
                }
            ],
            "https://schema.org/author": [
                {
                    "class": "https://schema.org/Person",
                    "https://schema.org/email": "mailto:sivaprk@mskcc.org",
                    "https://schema.org/identifier": "",
                    "https://schema.org/name": "Karthigayini Sivaprakasam"
                }
            ],
            "https://schema.org/citation": "",
            "https://schema.org/codeRepository": "https://github.com/msk-access/cwl_subworkflows/variant_postprocessing",
            "https://schema.org/contributor": [
                {
                    "class": "https://schema.org/Person",
                    "https://schema.org/email": "mailto:sivaprk@mskcc.org",
                    "https://schema.org/identifier": "",
                    "https://schema.org/name": "Karthigayini Sivaprakasam"
                },
                {
                    "class": "https://schema.org/Person",
                    "https://schema.org/email": "mailto:shahr@mskcc.org",
                    "https://schema.org/identifier": "",
                    "https://schema.org/name": "Ronak Shah"
                }
            ],
            "https://schema.org/dateCreated": "2020-07-13",
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