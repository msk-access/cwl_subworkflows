{
    "$graph": [
        {
            "class": "CommandLineTool",
            "id": "#oncokb_annotator_3-2-2.cwl",
            "baseCommand": [
                "python3",
                "/oncokb/MafAnnotator.py"
            ],
            "inputs": [
                {
                    "id": "#oncokb_annotator_3-2-2.cwl/oncokb_annotator/inputMafFile",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-i"
                    },
                    "doc": "input maf file for annotation"
                },
                {
                    "id": "#oncokb_annotator_3-2-2.cwl/oncokb_annotator/outputMafName",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-o"
                    }
                },
                {
                    "id": "#oncokb_annotator_3-2-2.cwl/oncokb_annotator/apiToken",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-b",
                        "loadContents": true,
                        "valueFrom": " ${ return inputs.apiToken.contents; }"
                    },
                    "doc": "OncoKB API token"
                },
                {
                    "id": "#oncokb_annotator_3-2-2.cwl/oncokb_annotator/previousResult",
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-p"
                    }
                },
                {
                    "id": "#oncokb_annotator_3-2-2.cwl/oncokb_annotator/clinicalFile",
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-c"
                    },
                    "doc": "Essential clinical columns:\n    SAMPLE_ID: sample ID\n    ONCOTREE_CODE: tumor type code from oncotree (http://oncotree.mskcc.org)"
                },
                {
                    "id": "#oncokb_annotator_3-2-2.cwl/oncokb_annotator/tumorType",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-t"
                    },
                    "doc": "Cancer type will be assigned based on the following priority:\n    1) ONCOTREE_CODE in clinical data file\n    2) ONCOTREE_CODE exist in MAF\n    3) default tumor type (-t)"
                },
                {
                    "id": "#oncokb_annotator_3-2-2.cwl/oncokb_annotator/referenceGenome",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-r"
                    },
                    "doc": "Reference Genome only allows the following values(case-insensitive):\n    - GRCh37\n      GRCh38"
                },
                {
                    "id": "#oncokb_annotator_3-2-2.cwl/oncokb_annotator/annotateHotspots",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-a"
                    }
                }
            ],
            "label": "oncokb_annotator",
            "arguments": [
                {
                    "position": 0,
                    "prefix": "-o",
                    "valueFrom": "${\n    if(inputs.outputMafName){\n        return inputs.outputMafName\n    } else {\n        return inputs.inputMafFile.basename.replace('.maf', '_oncoKB.maf')\n    }\n}"
                }
            ],
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/oncokbannotator:3.2.2"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "stdout": "onckb_stdout.txt",
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
                    "http://usefulinc.com/ns/doap#name": "oncoKb Annotator",
                    "http://usefulinc.com/ns/doap#revision": "3.2.2"
                }
            ],
            "outputs": [
                {
                    "id": "#oncokb_annotator_3-2-2.cwl/oncokb_annotator/outputMaf",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${ \n    if (inputs.outputMafName) { \n        return inputs.outputMafName\n    } else { \n        return inputs.inputMafFile.basename.replace('.maf', '_oncoKB.maf') \n    } \n}"
                    }
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#maf_annotated_by_bed.cwl",
            "baseCommand": [
                "pv"
            ],
            "inputs": [
                {
                    "id": "#maf_annotated_by_bed.cwl/maf_annotated_by_bed/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#maf_annotated_by_bed.cwl/maf_annotated_by_bed/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#maf_annotated_by_bed.cwl/maf_annotated_by_bed/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#maf_annotated_by_bed.cwl/maf_annotated_by_bed/input_maf",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-m"
                    }
                },
                {
                    "id": "#maf_annotated_by_bed.cwl/maf_annotated_by_bed/input_bed",
                    "type": "File",
                    "inputBinding": {
                        "position": 1,
                        "prefix": "-b"
                    }
                },
                {
                    "id": "#maf_annotated_by_bed.cwl/maf_annotated_by_bed/output_filename",
                    "type": "string",
                    "inputBinding": {
                        "position": 3,
                        "prefix": "-o"
                    }
                },
                {
                    "id": "#maf_annotated_by_bed.cwl/maf_annotated_by_bed/column_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 4,
                        "prefix": "-c"
                    },
                    "https://www.sevenbridges.com/toolDefaultValue": "annotation"
                }
            ],
            "outputs": [
                {
                    "id": "#maf_annotated_by_bed.cwl/maf_annotated_by_bed/output",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${ \n    if (inputs.output_filename) { \n        return inputs.output_filename \n    } else { \n        return inputs.input_maf.basename.replace('.maf', '_mafAnnotatedByBed.maf') \n    } \n}"
                    }
                }
            ],
            "label": "maf_annotated_by_bed",
            "arguments": [
                "maf",
                "annotate",
                "mafbybed",
                {
                    "position": 2,
                    "prefix": "--output",
                    "valueFrom": "${\n    if(inputs.output_filename){\n        return inputs.output_filename\n    } else {\n        return inputs.input_maf.basename.replace('.maf', '_mafAnnotatedByBed')\n    }\n}"
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 8000,
                    "coresMin": 2
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/postprocessing_variant_calls:chipvar_dev10"
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
                    "http://usefulinc.com/ns/doap#name": "postprocessing_variant_calls",
                    "http://usefulinc.com/ns/doap#revision": "0.2.3"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#maf_annotated_by_tsv.cwl",
            "baseCommand": [
                "pv"
            ],
            "inputs": [
                {
                    "id": "#maf_annotated_by_tsv.cwl/pv_maf_annotated_by_tsv/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#maf_annotated_by_tsv.cwl/pv_maf_annotated_by_tsv/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#maf_annotated_by_tsv.cwl/pv_maf_annotated_by_tsv/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#maf_annotated_by_tsv.cwl/pv_maf_annotated_by_tsv/input_maf",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-m"
                    }
                },
                {
                    "id": "#maf_annotated_by_tsv.cwl/pv_maf_annotated_by_tsv/output_maf_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-o"
                    },
                    "https://www.sevenbridges.com/toolDefaultValue": "output.maf"
                },
                {
                    "id": "#maf_annotated_by_tsv.cwl/pv_maf_annotated_by_tsv/output_column_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-oc"
                    },
                    "https://www.sevenbridges.com/toolDefaultValue": "tsv"
                },
                {
                    "id": "#maf_annotated_by_tsv.cwl/pv_maf_annotated_by_tsv/input_tsv_file",
                    "type": "File",
                    "inputBinding": {
                        "position": 1,
                        "prefix": "-t"
                    }
                },
                {
                    "id": "#maf_annotated_by_tsv.cwl/pv_maf_annotated_by_tsv/separator",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-sep"
                    }
                },
                {
                    "id": "#maf_annotated_by_tsv.cwl/pv_maf_annotated_by_tsv/values",
                    "type": [
                        "null",
                        {
                            "type": "array",
                            "items": "string"
                        }
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-v"
                    }
                }
            ],
            "outputs": [
                {
                    "id": "#maf_annotated_by_tsv.cwl/pv_maf_annotated_by_tsv/output",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${ \n    if (inputs.output_maf_name) { \n        return inputs.output_maf_name \n    } else { \n        return inputs.input_maf.basename.replace('.maf', '_maftagcmoCh.maf') \n    } \n}"
                    }
                }
            ],
            "label": "pv_maf_annotatedByTsv",
            "arguments": [
                "maf",
                "annotate",
                "mafbytsv",
                {
                    "position": 2,
                    "prefix": "--output",
                    "valueFrom": "${ \n    if (inputs.output_maf_name) { \n        return inputs.output_maf_name \n    } else { \n        return inputs.input_maf.basename.replace('.maf', '_maftagcmoCh.maf') \n    } \n}"
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 8000,
                    "coresMin": 2
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/postprocessing_variant_calls:chipvar_dev10"
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
                    "http://usefulinc.com/ns/doap#name": "postprocessing_variant_calls",
                    "http://usefulinc.com/ns/doap#revision": "0.2.3"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#snpsift_annotate_5-0.cwl",
            "baseCommand": [
                "java"
            ],
            "inputs": [
                {
                    "id": "#snpsift_annotate_5-0.cwl/snpsift_annotate_5_0/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#snpsift_annotate_5-0.cwl/snpsift_annotate_5_0/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#snpsift_annotate_5-0.cwl/snpsift_annotate_5_0/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#snpsift_annotate_5-0.cwl/snpsift_annotate_5_0/input_DB_vcf",
                    "type": "File",
                    "inputBinding": {
                        "position": 25
                    },
                    "secondaryFiles": [
                        ".tbi"
                    ]
                },
                {
                    "id": "#snpsift_annotate_5-0.cwl/snpsift_annotate_5_0/input_vcf",
                    "type": "File",
                    "inputBinding": {
                        "position": 26
                    }
                },
                {
                    "id": "#snpsift_annotate_5-0.cwl/snpsift_annotate_5_0/tabix",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-tabix"
                    },
                    "doc": "VCF database is tabix-indexed. Default: false"
                },
                {
                    "id": "#snpsift_annotate_5-0.cwl/snpsift_annotate_5_0/config",
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-c"
                    },
                    "doc": "Specify config file"
                },
                {
                    "id": "#snpsift_annotate_5-0.cwl/snpsift_annotate_5_0/debug",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-d"
                    },
                    "doc": "debug"
                },
                {
                    "id": "#snpsift_annotate_5-0.cwl/snpsift_annotate_5_0/output_file_name",
                    "type": [
                        "null",
                        "string"
                    ]
                },
                {
                    "id": "#snpsift_annotate_5-0.cwl/snpsift_annotate_5_0/sorted",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-sorted"
                    },
                    "doc": "VCF database is sorted and uncompressed. Default: false"
                }
            ],
            "outputs": [
                {
                    "id": "#snpsift_annotate_5-0.cwl/snpsift_annotate_5_0/annotatedOutput",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${ \n    if (inputs.output_file_name) { \n        return inputs.output_file_name \n    } else { \n        return inputs.input_vcf.basename.replace(/.vcf/, '_snpsift.vcf') \n    } \n}"
                    }
                }
            ],
            "label": "snpsift_annotate_5.0",
            "arguments": [
                {
                    "position": 0,
                    "prefix": "-jar",
                    "valueFrom": "/snpEff/SnpSift.jar"
                },
                {
                    "position": 0,
                    "valueFrom": "annotate"
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
                    "dockerPull": "ghcr.io/msk-access/snpsift:5.0"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "stdout": "${      if (inputs.output_file_name) {          return inputs.output_file_name      } else {          return inputs.input_vcf.basename.replace(/.vcf/, 'snpsift.vcf')      }  }",
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
                    "http://usefulinc.com/ns/doap#name": "snpsift",
                    "http://usefulinc.com/ns/doap#revision": 5
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#vcf2maf_1.6.21.cwl",
            "baseCommand": [
                "perl",
                "/opt/vcf2maf-1.6.21/vcf2maf.pl"
            ],
            "inputs": [
                {
                    "id": "#vcf2maf_1.6.21.cwl/vcf2maf_v1_6_21/any_allele",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--any-allele"
                    },
                    "doc": "When reporting co-located variants, allow mismatched variant alleles too"
                },
                {
                    "default": 5000,
                    "id": "#vcf2maf_1.6.21.cwl/vcf2maf_v1_6_21/buffer_size",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--buffer-size"
                    },
                    "doc": "Number of variants VEP loads at a time; Reduce this for low memory systems"
                },
                {
                    "default": "105",
                    "id": "#vcf2maf_1.6.21.cwl/vcf2maf_v1_6_21/cache_version",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--cache-version"
                    },
                    "doc": "Version of VEP and its cache to use"
                },
                {
                    "id": "#vcf2maf_1.6.21.cwl/vcf2maf_v1_6_21/custom_enst",
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--custom-enst"
                    },
                    "doc": "List of custom ENST IDs that override canonical selection, in a file"
                },
                {
                    "id": "#vcf2maf_1.6.21.cwl/vcf2maf_v1_6_21/input_vcf",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--input-vcf"
                    },
                    "doc": "Path to input file in VCF format , gzipped"
                },
                {
                    "default": "mskcc.org",
                    "id": "#vcf2maf_1.6.21.cwl/vcf2maf_v1_6_21/maf_center",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--maf-center"
                    },
                    "doc": "Variant calling center to report in MAF"
                },
                {
                    "id": "#vcf2maf_1.6.21.cwl/vcf2maf_v1_6_21/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#vcf2maf_1.6.21.cwl/vcf2maf_v1_6_21/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "default": 0.7,
                    "id": "#vcf2maf_1.6.21.cwl/vcf2maf_v1_6_21/min_hom_vaf",
                    "type": [
                        "null",
                        "float"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--min-hom-vaf"
                    },
                    "doc": "If GT undefined in VCF, minimum allele fraction to call a variant homozygous"
                },
                {
                    "default": "GRCh37",
                    "id": "#vcf2maf_1.6.21.cwl/vcf2maf_v1_6_21/ncbi_build",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--ncbi-build"
                    },
                    "doc": "Genome build of variants in input"
                },
                {
                    "default": "NORMAL",
                    "id": "#vcf2maf_1.6.21.cwl/vcf2maf_v1_6_21/normal_id",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--normal-id"
                    },
                    "doc": "Matched_Norm_Sample_Barcode to report in the MAF"
                },
                {
                    "id": "#vcf2maf_1.6.21.cwl/vcf2maf_v1_6_21/output_maf",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--output-maf"
                    },
                    "doc": "Path to output MAF file"
                },
                {
                    "default": "/.vep/homo_sapiens/105_GRCh37/Homo_sapiens.GRCh37.dna.toplevel.fa.gz",
                    "id": "#vcf2maf_1.6.21.cwl/vcf2maf_v1_6_21/ref_fasta",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--ref-fasta"
                    },
                    "doc": "Reference FASTA file"
                },
                {
                    "id": "#vcf2maf_1.6.21.cwl/vcf2maf_v1_6_21/remap_chain",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--remap-chain"
                    },
                    "doc": "Chain file to remap variants to a different assembly before running VEP"
                },
                {
                    "id": "#vcf2maf_1.6.21.cwl/vcf2maf_v1_6_21/retain_fmt",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--retain-fmt"
                    },
                    "doc": "Comma-delimited names of FORMAT fields to retain as extra columns in MAF []"
                },
                {
                    "id": "#vcf2maf_1.6.21.cwl/vcf2maf_v1_6_21/retain_info",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--retain-info"
                    },
                    "doc": "Comma-delimited names of INFO fields to retain as extra columns in MAF"
                },
                {
                    "default": "homo_sapiens",
                    "id": "#vcf2maf_1.6.21.cwl/vcf2maf_v1_6_21/species",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--species"
                    },
                    "doc": "Species of variants in input"
                },
                {
                    "default": "TUMOR",
                    "id": "#vcf2maf_1.6.21.cwl/vcf2maf_v1_6_21/tumor_id",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--tumor-id"
                    },
                    "doc": "Tumor_Sample_Barcode to report in the MAF"
                },
                {
                    "default": "NORMAL",
                    "id": "#vcf2maf_1.6.21.cwl/vcf2maf_v1_6_21/vcf_normal_id",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--vcf-normal-id"
                    },
                    "doc": "Matched normal ID used in VCFs genotype columns"
                },
                {
                    "default": "TUMOR",
                    "id": "#vcf2maf_1.6.21.cwl/vcf2maf_v1_6_21/vcf_tumor_id",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--vcf-tumor-id"
                    },
                    "doc": "Tumor sample ID used in VCFs genotype columns"
                },
                {
                    "default": "/.vep/ ",
                    "id": "#vcf2maf_1.6.21.cwl/vcf2maf_v1_6_21/vep_data",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--vep-data"
                    },
                    "doc": "VEPs base cache/plugin directory"
                },
                {
                    "default": 4,
                    "id": "#vcf2maf_1.6.21.cwl/vcf2maf_v1_6_21/vep_forks",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--vep-forks"
                    },
                    "doc": "Number of forked processes to use when running VEP"
                },
                {
                    "default": "/usr/local/bin/",
                    "id": "#vcf2maf_1.6.21.cwl/vcf2maf_v1_6_21/vep_path",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--vep-path"
                    },
                    "doc": "Folder containing variant_effect_predictor.pl or vep binary"
                }
            ],
            "outputs": [
                {
                    "id": "#vcf2maf_1.6.21.cwl/vcf2maf_v1_6_21/vcf2maf_maf",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${ \n    if (inputs.output_maf) { \n        return inputs.output_maf\n    } else { \n        return inputs.input_vcf.basename.replace('.vcf', '_vcf2maf.maf') \n    } \n}"
                    }
                }
            ],
            "arguments": [
                {
                    "position": 0,
                    "prefix": "--tmp-dir",
                    "shellQuote": false,
                    "valueFrom": "$(runtime.tmpdir)"
                },
                {
                    "position": 0,
                    "prefix": "--output-maf",
                    "valueFrom": "${ \n    if (inputs.output_maf) { \n        return inputs.output_maf\n    } else { \n        return inputs.input_vcf.basename.replace('.vcf', '_vcf2maf.maf') \n    } \n}"
                }
            ],
            "requirements": [
                {
                    "class": "ShellCommandRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "ramMin": 8000,
                    "coresMin": 2
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/vcf2maf:1.6.21"
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
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:vurals@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Suleyman Vural"
                        },
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
                    "http://usefulinc.com/ns/doap#name": "vcf2maf",
                    "http://usefulinc.com/ns/doap#revision": "1.6.21"
                }
            ]
        },
        {
            "class": "Workflow",
            "id": "#main",
            "label": "variant_annotation",
            "inputs": [
                {
                    "id": "#main/input_cosmicCountDB_vcf",
                    "type": "File",
                    "secondaryFiles": [
                        ".tbi"
                    ],
                    "https://www.sevenbridges.com/x": 23.445261001586914,
                    "https://www.sevenbridges.com/y": 364.7808837890625
                },
                {
                    "id": "#main/vardict_input_vcf",
                    "type": "File",
                    "https://www.sevenbridges.com/x": -6.394162178039551,
                    "https://www.sevenbridges.com/y": 252.5694122314453
                },
                {
                    "id": "#main/input_cosmicprevalenceDB_vcf",
                    "type": "File",
                    "secondaryFiles": [
                        ".tbi"
                    ],
                    "https://www.sevenbridges.com/x": 478.74456787109375,
                    "https://www.sevenbridges.com/y": 357.3795166015625
                },
                {
                    "id": "#main/min_hom_vaf",
                    "type": [
                        "null",
                        "float"
                    ],
                    "https://www.sevenbridges.com/x": 811.7153930664062,
                    "https://www.sevenbridges.com/y": 475.2481384277344
                },
                {
                    "id": "#main/output_vcf2mafName",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 810.6497192382812,
                    "https://www.sevenbridges.com/y": 390.56201171875
                },
                {
                    "id": "#main/retain_info",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 833.029296875,
                    "https://www.sevenbridges.com/y": 255.85397338867188
                },
                {
                    "id": "#main/tumor_id",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 876.7227172851562,
                    "https://www.sevenbridges.com/y": 144.93431091308594
                },
                {
                    "id": "#main/snpsift_countOpName",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 21.313875198364258,
                    "https://www.sevenbridges.com/y": 146.92698669433594
                },
                {
                    "id": "#main/snpsift_prevalOpName",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 471.03662109375,
                    "https://www.sevenbridges.com/y": 208.3065948486328
                },
                {
                    "id": "#main/opOncoKbMafName",
                    "type": "string",
                    "https://www.sevenbridges.com/x": 1262.8470458984375,
                    "https://www.sevenbridges.com/y": 271.8393249511719
                },
                {
                    "id": "#main/oncoKbApiToken",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 1170.1317138671875,
                    "https://www.sevenbridges.com/y": 455.5693054199219
                },
                {
                    "id": "#main/oncoKbAnnotateHotspots",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 1230.876220703125,
                    "https://www.sevenbridges.com/y": 542.3211059570312
                },
                {
                    "id": "#main/input_mappability_bed",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 1663.8760986328125,
                    "https://www.sevenbridges.com/y": 483.8832092285156
                },
                {
                    "id": "#main/input_complexity_bed",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 1974.700927734375,
                    "https://www.sevenbridges.com/y": 498.8029479980469
                },
                {
                    "id": "#main/output_mappability_filename",
                    "type": "string",
                    "https://www.sevenbridges.com/x": 1618.7889404296875,
                    "https://www.sevenbridges.com/y": 318.9342956542969
                },
                {
                    "id": "#main/column_name_mappability",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 1702.2410888671875,
                    "https://www.sevenbridges.com/y": 577.0948486328125
                },
                {
                    "id": "#main/output_complexity_filename",
                    "type": "string",
                    "https://www.sevenbridges.com/x": 2086.625732421875,
                    "https://www.sevenbridges.com/y": 382.24090576171875
                },
                {
                    "id": "#main/column_name_complexity",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 2012.0001220703125,
                    "https://www.sevenbridges.com/y": 601.6058349609375
                },
                {
                    "id": "#main/input_hotspot_tsv_file",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 2425.953857421875,
                    "https://www.sevenbridges.com/y": 306.6236572265625
                },
                {
                    "id": "#main/output_column_name_hotpsot",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 2538.91748046875,
                    "https://www.sevenbridges.com/y": 206.44845581054688
                },
                {
                    "id": "#main/output_hotspot_maf_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 2457.218994140625,
                    "https://www.sevenbridges.com/y": 758.5621337890625
                },
                {
                    "id": "#main/input_47kchpd_tsv_file",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 2759.510498046875,
                    "https://www.sevenbridges.com/y": 265.0616149902344
                },
                {
                    "id": "#main/output_47kchpd_maf_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 3004.045654296875,
                    "https://www.sevenbridges.com/y": 208.01800537109375
                },
                {
                    "id": "#main/output_column_name_47kchpd",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 2837.483642578125,
                    "https://www.sevenbridges.com/y": 590.1929931640625
                },
                {
                    "id": "#main/input_panmeloid_tsv_file",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 3165.773193359375,
                    "https://www.sevenbridges.com/y": 219.0523681640625
                },
                {
                    "id": "#main/output_maf_name_panmyeloid",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 3330.037841796875,
                    "https://www.sevenbridges.com/y": 199.72714233398438
                },
                {
                    "id": "#main/output_column_name_panmyeloid",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 3216.4921875,
                    "https://www.sevenbridges.com/y": 559.9721069335938
                }
            ],
            "outputs": [
                {
                    "id": "#main/cosmicCount_annotatedOutput",
                    "outputSource": [
                        "#main/snpsift_annotate_5_0/annotatedOutput"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 224.51815795898438,
                    "https://www.sevenbridges.com/y": 602.496337890625
                },
                {
                    "id": "#main/annotatedOutput_prevalence",
                    "outputSource": [
                        "#main/snpsift_annotate_5_1/annotatedOutput"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 714.343017578125,
                    "https://www.sevenbridges.com/y": 463.94891357421875
                },
                {
                    "id": "#main/vcf2maf_maf",
                    "outputSource": [
                        "#main/vcf2maf_v1_6_21/vcf2maf_maf"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 1163.603759765625,
                    "https://www.sevenbridges.com/y": 246.265625
                },
                {
                    "id": "#main/oncokb_maf",
                    "outputSource": [
                        "#main/oncokb_annotator/outputMaf"
                    ],
                    "type": [
                        "null",
                        "File"
                    ],
                    "https://www.sevenbridges.com/x": 1504.72998046875,
                    "https://www.sevenbridges.com/y": 733.0220336914062
                },
                {
                    "id": "#main/output_mapability_maf",
                    "outputSource": [
                        "#main/maf_annotated_by_bed/output"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 2008.9051513671875,
                    "https://www.sevenbridges.com/y": 272.00726318359375
                },
                {
                    "id": "#main/output_complexity_maf",
                    "outputSource": [
                        "#main/maf_annotated_by_bed_1/output"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 2283.204345703125,
                    "https://www.sevenbridges.com/y": 275.9561767578125
                },
                {
                    "id": "#main/output_hotspot_maf",
                    "outputSource": [
                        "#main/pv_maf_annotated_by_tsv/output"
                    ],
                    "type": [
                        "null",
                        "File"
                    ],
                    "https://www.sevenbridges.com/x": 2793.349609375,
                    "https://www.sevenbridges.com/y": 755.3427734375
                },
                {
                    "id": "#main/output_47kchpd_maf",
                    "outputSource": [
                        "#main/pv_maf_annotated_by_tsv_1/output"
                    ],
                    "type": [
                        "null",
                        "File"
                    ],
                    "https://www.sevenbridges.com/x": 3171.963623046875,
                    "https://www.sevenbridges.com/y": 695.1704711914062
                },
                {
                    "id": "#main/output_panmyeloid_maf",
                    "outputSource": [
                        "#main/pv_maf_annotated_by_tsv_2/output"
                    ],
                    "type": [
                        "null",
                        "File"
                    ],
                    "https://www.sevenbridges.com/x": 3498.328369140625,
                    "https://www.sevenbridges.com/y": 604.7518310546875
                }
            ],
            "steps": [
                {
                    "id": "#main/snpsift_annotate_5_0",
                    "in": [
                        {
                            "id": "#main/snpsift_annotate_5_0/input_DB_vcf",
                            "source": "#main/input_cosmicCountDB_vcf"
                        },
                        {
                            "id": "#main/snpsift_annotate_5_0/input_vcf",
                            "source": "#main/vardict_input_vcf"
                        },
                        {
                            "id": "#main/snpsift_annotate_5_0/output_file_name",
                            "source": "#main/snpsift_countOpName"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/snpsift_annotate_5_0/annotatedOutput"
                        }
                    ],
                    "run": "#snpsift_annotate_5-0.cwl",
                    "label": "snpsift_countAnnotation",
                    "https://www.sevenbridges.com/x": 245.35765075683594,
                    "https://www.sevenbridges.com/y": 251.2992401123047
                },
                {
                    "id": "#main/snpsift_annotate_5_1",
                    "in": [
                        {
                            "id": "#main/snpsift_annotate_5_1/input_DB_vcf",
                            "source": "#main/input_cosmicprevalenceDB_vcf"
                        },
                        {
                            "id": "#main/snpsift_annotate_5_1/input_vcf",
                            "source": "#main/snpsift_annotate_5_0/annotatedOutput"
                        },
                        {
                            "id": "#main/snpsift_annotate_5_1/output_file_name",
                            "source": "#main/snpsift_prevalOpName"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/snpsift_annotate_5_1/annotatedOutput"
                        }
                    ],
                    "run": "#snpsift_annotate_5-0.cwl",
                    "label": "snpsift_annotate_5.0",
                    "https://www.sevenbridges.com/x": 639.072998046875,
                    "https://www.sevenbridges.com/y": 278.7226257324219
                },
                {
                    "id": "#main/vcf2maf_v1_6_21",
                    "in": [
                        {
                            "id": "#main/vcf2maf_v1_6_21/input_vcf",
                            "source": "#main/snpsift_annotate_5_1/annotatedOutput"
                        },
                        {
                            "id": "#main/vcf2maf_v1_6_21/min_hom_vaf",
                            "source": "#main/min_hom_vaf"
                        },
                        {
                            "id": "#main/vcf2maf_v1_6_21/output_maf",
                            "source": "#main/output_vcf2mafName"
                        },
                        {
                            "id": "#main/vcf2maf_v1_6_21/ref_fasta",
                            "default": "/.vep/homo_sapiens/105_GRCh37/Homo_sapiens.GRCh37.dna.toplevel.fa.gz"
                        },
                        {
                            "id": "#main/vcf2maf_v1_6_21/retain_info",
                            "source": "#main/retain_info"
                        },
                        {
                            "id": "#main/vcf2maf_v1_6_21/tumor_id",
                            "source": "#main/tumor_id"
                        },
                        {
                            "id": "#main/vcf2maf_v1_6_21/vcf_tumor_id",
                            "source": "#main/tumor_id"
                        },
                        {
                            "id": "#main/vcf2maf_v1_6_21/vep_data",
                            "default": "/.vep/"
                        },
                        {
                            "id": "#main/vcf2maf_v1_6_21/vep_path",
                            "default": "/usr/local/bin/"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/vcf2maf_v1_6_21/vcf2maf_maf"
                        }
                    ],
                    "run": "#vcf2maf_1.6.21.cwl",
                    "https://www.sevenbridges.com/x": 1015.934326171875,
                    "https://www.sevenbridges.com/y": 356.05108642578125
                },
                {
                    "id": "#main/oncokb_annotator",
                    "in": [
                        {
                            "id": "#main/oncokb_annotator/inputMafFile",
                            "source": "#main/vcf2maf_v1_6_21/vcf2maf_maf"
                        },
                        {
                            "id": "#main/oncokb_annotator/outputMafName",
                            "source": "#main/opOncoKbMafName"
                        },
                        {
                            "id": "#main/oncokb_annotator/apiToken",
                            "source": "#main/oncoKbApiToken"
                        },
                        {
                            "id": "#main/oncokb_annotator/referenceGenome",
                            "default": "GRCh37"
                        },
                        {
                            "id": "#main/oncokb_annotator/annotateHotspots",
                            "source": "#main/oncoKbAnnotateHotspots"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/oncokb_annotator/outputMaf"
                        }
                    ],
                    "run": "#oncokb_annotator_3-2-2.cwl",
                    "label": "oncokb_annotator",
                    "https://www.sevenbridges.com/x": 1426.226318359375,
                    "https://www.sevenbridges.com/y": 402.77374267578125
                },
                {
                    "id": "#main/maf_annotated_by_bed",
                    "in": [
                        {
                            "id": "#main/maf_annotated_by_bed/input_maf",
                            "source": "#main/oncokb_annotator/outputMaf"
                        },
                        {
                            "id": "#main/maf_annotated_by_bed/input_bed",
                            "source": "#main/input_mappability_bed"
                        },
                        {
                            "id": "#main/maf_annotated_by_bed/output_filename",
                            "source": "#main/output_mappability_filename"
                        },
                        {
                            "id": "#main/maf_annotated_by_bed/column_name",
                            "source": "#main/column_name_mappability"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/maf_annotated_by_bed/output"
                        }
                    ],
                    "run": "#maf_annotated_by_bed.cwl",
                    "label": "maf_annotated_by_bed",
                    "https://www.sevenbridges.com/x": 1838.0584716796875,
                    "https://www.sevenbridges.com/y": 425.2846984863281
                },
                {
                    "id": "#main/maf_annotated_by_bed_1",
                    "in": [
                        {
                            "id": "#main/maf_annotated_by_bed_1/input_maf",
                            "source": "#main/maf_annotated_by_bed/output"
                        },
                        {
                            "id": "#main/maf_annotated_by_bed_1/input_bed",
                            "source": "#main/input_complexity_bed"
                        },
                        {
                            "id": "#main/maf_annotated_by_bed_1/output_filename",
                            "source": "#main/output_complexity_filename"
                        },
                        {
                            "id": "#main/maf_annotated_by_bed_1/column_name",
                            "source": "#main/column_name_complexity"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/maf_annotated_by_bed_1/output"
                        }
                    ],
                    "run": "#maf_annotated_by_bed.cwl",
                    "label": "maf_annotated_by_bed",
                    "https://www.sevenbridges.com/x": 2220.102294921875,
                    "https://www.sevenbridges.com/y": 478.15325927734375
                },
                {
                    "id": "#main/pv_maf_annotated_by_tsv",
                    "in": [
                        {
                            "id": "#main/pv_maf_annotated_by_tsv/input_maf",
                            "source": "#main/maf_annotated_by_bed_1/output"
                        },
                        {
                            "id": "#main/pv_maf_annotated_by_tsv/output_maf_name",
                            "source": "#main/output_hotspot_maf_name"
                        },
                        {
                            "id": "#main/pv_maf_annotated_by_tsv/output_column_name",
                            "source": "#main/output_column_name_hotpsot"
                        },
                        {
                            "id": "#main/pv_maf_annotated_by_tsv/input_tsv_file",
                            "source": "#main/input_hotspot_tsv_file"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/pv_maf_annotated_by_tsv/output"
                        }
                    ],
                    "run": "#maf_annotated_by_tsv.cwl",
                    "label": "pv_maf_annotatedByTsv",
                    "https://www.sevenbridges.com/x": 2624.56201171875,
                    "https://www.sevenbridges.com/y": 446.36090087890625
                },
                {
                    "id": "#main/pv_maf_annotated_by_tsv_1",
                    "in": [
                        {
                            "id": "#main/pv_maf_annotated_by_tsv_1/input_maf",
                            "source": "#main/pv_maf_annotated_by_tsv/output"
                        },
                        {
                            "id": "#main/pv_maf_annotated_by_tsv_1/output_maf_name",
                            "source": "#main/output_47kchpd_maf_name"
                        },
                        {
                            "id": "#main/pv_maf_annotated_by_tsv_1/output_column_name",
                            "source": "#main/output_column_name_47kchpd"
                        },
                        {
                            "id": "#main/pv_maf_annotated_by_tsv_1/input_tsv_file",
                            "source": "#main/input_47kchpd_tsv_file"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/pv_maf_annotated_by_tsv_1/output"
                        }
                    ],
                    "run": "#maf_annotated_by_tsv.cwl",
                    "label": "pv_maf_annotatedByTsv",
                    "https://www.sevenbridges.com/x": 3027.093994140625,
                    "https://www.sevenbridges.com/y": 444.81915283203125
                },
                {
                    "id": "#main/pv_maf_annotated_by_tsv_2",
                    "in": [
                        {
                            "id": "#main/pv_maf_annotated_by_tsv_2/input_maf",
                            "source": "#main/pv_maf_annotated_by_tsv_1/output"
                        },
                        {
                            "id": "#main/pv_maf_annotated_by_tsv_2/output_maf_name",
                            "source": "#main/output_maf_name_panmyeloid"
                        },
                        {
                            "id": "#main/pv_maf_annotated_by_tsv_2/output_column_name",
                            "source": "#main/output_column_name_panmyeloid"
                        },
                        {
                            "id": "#main/pv_maf_annotated_by_tsv_2/input_tsv_file",
                            "source": "#main/input_panmeloid_tsv_file"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/pv_maf_annotated_by_tsv_2/output"
                        }
                    ],
                    "run": "#maf_annotated_by_tsv.cwl",
                    "label": "pv_maf_annotatedByTsv",
                    "https://www.sevenbridges.com/x": 3366.108154296875,
                    "https://www.sevenbridges.com/y": 434.5843505859375
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
            "https://schema.org/dateCreated": "2020-10-31",
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
