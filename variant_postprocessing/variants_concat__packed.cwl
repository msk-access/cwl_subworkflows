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
                },
                {
                    "id": "#bcftools_bgzip_1.15.1.cwl/bgzip/output_directory",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0
                    }
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
                            "entry": "$(inputs.output_directory)",
                            "writable": true
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
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-o"
                    },
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
            "class": "Workflow",
            "id": "#variant_normalize_sort.cwl",
            "label": "bgzip_normalize_sort",
            "inputs": [
                {
                    "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/input",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 345.4530029296875
                },
                {
                    "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/fastaRef",
                    "type": "File",
                    "secondaryFiles": [
                        ".fai"
                    ],
                    "https://www.sevenbridges.com/x": 530.09375,
                    "https://www.sevenbridges.com/y": 220.75
                },
                {
                    "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/stdout",
                    "type": "boolean",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 7
                },
                {
                    "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/bgzip_output_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 1.529915452003479,
                    "https://www.sevenbridges.com/y": 219.90597534179688
                },
                {
                    "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/preset",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 764.5779418945312,
                    "https://www.sevenbridges.com/y": -371.015625
                },
                {
                    "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/output_type",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 1098.478759765625,
                    "https://www.sevenbridges.com/y": -9.393171310424805
                },
                {
                    "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/norm_output_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 530.09375,
                    "https://www.sevenbridges.com/y": 434.5
                },
                {
                    "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/multiallelics",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 530.09375,
                    "https://www.sevenbridges.com/y": 113.875
                },
                {
                    "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/check_ref",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 530.09375,
                    "https://www.sevenbridges.com/y": 327.625
                },
                {
                    "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/sort_output_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 1034.2222900390625,
                    "https://www.sevenbridges.com/y": 86.7093734741211
                },
                {
                    "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/bgzip_output_directory",
                    "type": [
                        "null",
                        "Directory"
                    ],
                    "https://www.sevenbridges.com/x": -161.70230102539062,
                    "https://www.sevenbridges.com/y": 294.5
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
                    "https://www.sevenbridges.com/x": 1734.3028564453125,
                    "https://www.sevenbridges.com/y": 220.75
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
                        },
                        {
                            "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/bgzip/output_directory",
                            "source": "#variant_normalize_sort.cwl/bgzip_normalize_sort/bgzip_output_directory"
                        }
                    ],
                    "out": [
                        {
                            "id": "#variant_normalize_sort.cwl/bgzip_normalize_sort/bgzip/zippedVcf"
                        }
                    ],
                    "run": "#bcftools_bgzip_1.15.1.cwl",
                    "label": "bgzip",
                    "https://www.sevenbridges.com/x": 266.546875,
                    "https://www.sevenbridges.com/y": 274.1875
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
                    "https://www.sevenbridges.com/x": 530,
                    "https://www.sevenbridges.com/y": -145.842529296875
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
                    "https://www.sevenbridges.com/x": 807.75,
                    "https://www.sevenbridges.com/y": 185.75
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
                    "https://www.sevenbridges.com/x": 1109.5467529296875,
                    "https://www.sevenbridges.com/y": 213.75
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
                    "https://www.sevenbridges.com/x": 1299.7919921875,
                    "https://www.sevenbridges.com/y": 206.75
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
                    "https://www.sevenbridges.com/x": 1544.0576171875,
                    "https://www.sevenbridges.com/y": 213.6875
                }
            ],
            "requirements": [],
            "https://schema.org/author": [
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
            "https://schema.org/dateCreated": "2020-06-2",
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
                    "https://www.sevenbridges.com/x": -518.9956665039062,
                    "https://www.sevenbridges.com/y": 42
                },
                {
                    "id": "#variant_sort.cwl/bgzip_sort/stdout",
                    "type": "boolean",
                    "https://www.sevenbridges.com/x": -432,
                    "https://www.sevenbridges.com/y": -172
                },
                {
                    "id": "#variant_sort.cwl/bgzip_sort/bgzip_output_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": -504,
                    "https://www.sevenbridges.com/y": -84
                },
                {
                    "id": "#variant_sort.cwl/bgzip_sort/preset",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": -253,
                    "https://www.sevenbridges.com/y": -228
                },
                {
                    "id": "#variant_sort.cwl/bgzip_sort/output_type",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 53.55900573730469,
                    "https://www.sevenbridges.com/y": -245.5
                },
                {
                    "id": "#variant_sort.cwl/bgzip_sort/sort_output_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": -9,
                    "https://www.sevenbridges.com/y": 90
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
                    "https://www.sevenbridges.com/x": 591,
                    "https://www.sevenbridges.com/y": 33
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
                    "https://www.sevenbridges.com/x": -245,
                    "https://www.sevenbridges.com/y": -43
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
                    "https://www.sevenbridges.com/x": 190,
                    "https://www.sevenbridges.com/y": -79
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
                    "https://www.sevenbridges.com/x": -31,
                    "https://www.sevenbridges.com/y": -85
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
                    "https://www.sevenbridges.com/x": 383,
                    "https://www.sevenbridges.com/y": -115
                }
            ],
            "requirements": [],
            "https://schema.org/author": [
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
            "https://schema.org/dateCreated": "2020-06-2",
            "https://schema.org/license": "https://spdx.org/licenses/Apache-2.0"
        },
        {
            "class": "Workflow",
            "id": "#main",
            "label": "variants_concat",
            "inputs": [
                {
                    "id": "#main/fastaRef",
                    "type": "File",
                    "https://www.sevenbridges.com/x": -495.60113525390625,
                    "https://www.sevenbridges.com/y": -51.5
                },
                {
                    "id": "#main/input",
                    "type": "File",
                    "https://www.sevenbridges.com/x": -468.60113525390625,
                    "https://www.sevenbridges.com/y": -197.5
                },
                {
                    "id": "#main/bgzip_output_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": -275.7477722167969,
                    "https://www.sevenbridges.com/y": 175.36965942382812
                },
                {
                    "id": "#main/check_ref",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": -326.6642761230469,
                    "https://www.sevenbridges.com/y": 39.93177032470703
                },
                {
                    "id": "#main/multiallelics",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": -409.58453369140625,
                    "https://www.sevenbridges.com/y": -127.52545928955078
                },
                {
                    "id": "#main/norm_output_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": -349.4378967285156,
                    "https://www.sevenbridges.com/y": -236.35031127929688
                },
                {
                    "id": "#main/output_type",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": -203.44635009765625,
                    "https://www.sevenbridges.com/y": -346.006103515625
                },
                {
                    "id": "#main/preset",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": -69.02679443359375,
                    "https://www.sevenbridges.com/y": -255.37474060058594
                },
                {
                    "id": "#main/sort_output_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 147.8774871826172,
                    "https://www.sevenbridges.com/y": -269.6313781738281
                },
                {
                    "id": "#main/complex_sort_output_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 622.2739868164062,
                    "https://www.sevenbridges.com/y": -229.81654357910156
                },
                {
                    "id": "#main/complex_input",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 461.0975036621094,
                    "https://www.sevenbridges.com/y": 26.654048919677734
                },
                {
                    "id": "#main/complex_bgzip_output_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 494.0386962890625,
                    "https://www.sevenbridges.com/y": 265.64788818359375
                },
                {
                    "id": "#main/output_name",
                    "type": "string",
                    "https://www.sevenbridges.com/x": 21.79051399230957,
                    "https://www.sevenbridges.com/y": 742.0482177734375
                },
                {
                    "id": "#main/allow_overlaps",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 93.62149810791016,
                    "https://www.sevenbridges.com/y": 873.0341186523438
                },
                {
                    "id": "#main/stdout",
                    "type": "boolean",
                    "https://www.sevenbridges.com/x": 315.8106689453125,
                    "https://www.sevenbridges.com/y": -71.67112731933594
                }
            ],
            "outputs": [
                {
                    "id": "#main/concatenated_vcf",
                    "outputSource": [
                        "#main/bcftools_concat/concatenated_vcf"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 689.3961181640625,
                    "https://www.sevenbridges.com/y": 751.9074096679688
                }
            ],
            "steps": [
                {
                    "id": "#main/bgzip_normalize_sort",
                    "in": [
                        {
                            "id": "#main/bgzip_normalize_sort/input",
                            "source": "#main/input"
                        },
                        {
                            "id": "#main/bgzip_normalize_sort/fastaRef",
                            "source": "#main/fastaRef"
                        },
                        {
                            "id": "#main/bgzip_normalize_sort/stdout",
                            "source": "#main/stdout"
                        },
                        {
                            "id": "#main/bgzip_normalize_sort/bgzip_output_name",
                            "source": "#main/bgzip_output_name"
                        },
                        {
                            "id": "#main/bgzip_normalize_sort/preset",
                            "source": "#main/preset"
                        },
                        {
                            "id": "#main/bgzip_normalize_sort/output_type",
                            "source": "#main/output_type"
                        },
                        {
                            "id": "#main/bgzip_normalize_sort/norm_output_name",
                            "source": "#main/norm_output_name"
                        },
                        {
                            "id": "#main/bgzip_normalize_sort/multiallelics",
                            "source": "#main/multiallelics"
                        },
                        {
                            "id": "#main/bgzip_normalize_sort/check_ref",
                            "source": "#main/check_ref"
                        },
                        {
                            "id": "#main/bgzip_normalize_sort/sort_output_name",
                            "source": "#main/sort_output_name"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/bgzip_normalize_sort/bgzip_normalize_sort_output"
                        }
                    ],
                    "run": "#variant_normalize_sort.cwl",
                    "label": "bgzip_normalize_sort",
                    "https://www.sevenbridges.com/x": 125.46411895751953,
                    "https://www.sevenbridges.com/y": 20.04885482788086
                },
                {
                    "id": "#main/bgzip_sort",
                    "in": [
                        {
                            "id": "#main/bgzip_sort/input",
                            "source": "#main/complex_input"
                        },
                        {
                            "id": "#main/bgzip_sort/stdout",
                            "source": "#main/stdout"
                        },
                        {
                            "id": "#main/bgzip_sort/bgzip_output_name",
                            "source": "#main/complex_bgzip_output_name"
                        },
                        {
                            "id": "#main/bgzip_sort/preset",
                            "source": "#main/preset"
                        },
                        {
                            "id": "#main/bgzip_sort/output_type",
                            "source": "#main/output_type"
                        },
                        {
                            "id": "#main/bgzip_sort/sort_output_name",
                            "source": "#main/complex_sort_output_name"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/bgzip_sort/bgzip_sorted_output"
                        }
                    ],
                    "run": "#variant_sort.cwl",
                    "label": "bgzip_sort.cwl",
                    "https://www.sevenbridges.com/x": 1037.812255859375,
                    "https://www.sevenbridges.com/y": -30.04885482788086
                },
                {
                    "id": "#main/bcftools_concat",
                    "in": [
                        {
                            "id": "#main/bcftools_concat/allow_overlaps",
                            "source": "#main/allow_overlaps"
                        },
                        {
                            "id": "#main/bcftools_concat/output_name",
                            "source": "#main/output_name"
                        },
                        {
                            "id": "#main/bcftools_concat/output_type",
                            "source": "#main/output_type"
                        },
                        {
                            "id": "#main/bcftools_concat/input",
                            "source": [
                                "#main/bgzip_normalize_sort/bgzip_normalize_sort_output",
                                "#main/bgzip_sort/bgzip_sorted_output"
                            ]
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/bcftools_concat/concatenated_vcf"
                        }
                    ],
                    "run": "#bcftools_concat_1.15.1.cwl",
                    "label": "bcftools_concat",
                    "https://www.sevenbridges.com/x": 369.0542907714844,
                    "https://www.sevenbridges.com/y": 754.6953125
                }
            ],
            "requirements": [
                {
                    "class": "SubworkflowFeatureRequirement"
                },
                {
                    "class": "MultipleInputFeatureRequirement"
                }
            ]
        }
    ],
    "cwlVersion": "v1.0",
    "$schemas": [
        "http://schema.org/version/latest/schemaorg-current-http.rdf"
    ],
    "$namespaces": {
        "sbg": "https://www.sevenbridges.com/"
    }
}