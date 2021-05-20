{
    "$graph": [
        {
            "class": "Workflow",
            "id": "#main",
            "label": "access_qc_aggregator",
            "inputs": [
                {
                    "id": "#duplex_extraction_files",
                    "type": {
                        "type": "array",
                        "items": "File",
                        "inputBinding": {
                            "position": 0,
                            "prefix": "--input"
                        }
                    },
                    "label": "duplex_extraction_files",
                    "doc": "Can be one of three types: (1) path to a CSV file containing sample information (one per line). For example: sample_name,sample_bam,sample_type,sample_sex,sample_group. (2) Path to a '*.pk' file that was produced by the 'extract' tool. (3) Name of the sample to analyze; this assumes there is a file named '{sample_name}.pk' in your database directory. Can be specified more than once.",
                    "https://www.sevenbridges.com/x": -432.869140625,
                    "https://www.sevenbridges.com/y": 130.13436889648438
                },
                {
                    "id": "#duplex_biometrics_discordance_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "doc": "Discordance values less than this are regarded as matching samples. (default: 0.05)",
                    "https://www.sevenbridges.com/x": -439.3351745605469,
                    "https://www.sevenbridges.com/y": -10.98059368133545
                },
                {
                    "id": "#biometrics_json",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "label": "biometrics_json",
                    "doc": "Also output data in JSON format.",
                    "https://www.sevenbridges.com/x": -886.3317260742188,
                    "https://www.sevenbridges.com/y": 1000.4258422851562
                },
                {
                    "id": "#biometrics_plot",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "label": "biometrics_plot",
                    "doc": "Also output plots of the data.",
                    "https://www.sevenbridges.com/x": -890.3317260742188,
                    "https://www.sevenbridges.com/y": 846.9597778320312
                },
                {
                    "id": "#simplex_bam_pool_a_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "simplex_bam_pool_a_dir",
                    "https://www.sevenbridges.com/x": -373.4821472167969,
                    "https://www.sevenbridges.com/y": -2165.392822265625
                },
                {
                    "id": "#duplex_bam_sequence_qc_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "duplex_bam_sequence_qc_dir",
                    "https://www.sevenbridges.com/x": -364.5106506347656,
                    "https://www.sevenbridges.com/y": -2014.1710205078125
                },
                {
                    "id": "#duplex_bam_stats_pool_a_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "duplex_bam_stats_pool_a_dir",
                    "https://www.sevenbridges.com/x": -366.6091613769531,
                    "https://www.sevenbridges.com/y": -1860.9732666015625
                },
                {
                    "id": "#duplex_bam_stats_pool_b_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "duplex_bam_stats_pool_b_dir",
                    "https://www.sevenbridges.com/x": -358.2148742675781,
                    "https://www.sevenbridges.com/y": -1711.974609375
                },
                {
                    "id": "#collapsed_bam_stats_pool_a_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "collapsed_bam_stats_pool_a_dir",
                    "https://www.sevenbridges.com/x": -355.0670166015625,
                    "https://www.sevenbridges.com/y": -1557.7293701171875
                },
                {
                    "id": "#collapsed_bam_stats_pool_b_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "collapsed_bam_stats_pool_b_dir",
                    "https://www.sevenbridges.com/x": -349.820556640625,
                    "https://www.sevenbridges.com/y": -1377.2520751953125
                },
                {
                    "id": "#collapsed_bam_duplex_metrics_pool_a_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "collapsed_bam_duplex_metrics_pool_a_dir",
                    "https://www.sevenbridges.com/x": -346.6726989746094,
                    "https://www.sevenbridges.com/y": -1234.5489501953125
                },
                {
                    "id": "#collapsed_bam_duplex_metrics_pool_b_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "collapsed_bam_duplex_metrics_pool_b_dir",
                    "https://www.sevenbridges.com/x": -336.1798400878906,
                    "https://www.sevenbridges.com/y": -1068.7615966796875
                },
                {
                    "id": "#gatk_mean_quality_by_cycle_recal_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "gatk_mean_quality_by_cycle_recal_dir",
                    "https://www.sevenbridges.com/x": -334.0812683105469,
                    "https://www.sevenbridges.com/y": -918.7134399414062
                },
                {
                    "id": "#gatk_mean_quality_by_cycle_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "gatk_mean_quality_by_cycle_dir",
                    "https://www.sevenbridges.com/x": -342.4755554199219,
                    "https://www.sevenbridges.com/y": -761.3282470703125
                },
                {
                    "id": "#uncollapsed_bam_stats_pool_b_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "uncollapsed_bam_stats_pool_b_dir",
                    "https://www.sevenbridges.com/x": -334.0872497558594,
                    "https://www.sevenbridges.com/y": -610.5114135742188
                },
                {
                    "id": "#uncollapsed_bam_stats_pool_a_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "uncollapsed_bam_stats_pool_a_dir",
                    "https://www.sevenbridges.com/x": -340.1039123535156,
                    "https://www.sevenbridges.com/y": -475.7384948730469
                },
                {
                    "id": "#biometrics_threads",
                    "type": [
                        "null",
                        "int"
                    ],
                    "label": "biometrics_threads",
                    "doc": "Number of threads to use.",
                    "https://www.sevenbridges.com/x": -882.580322265625,
                    "https://www.sevenbridges.com/y": 707.580322265625
                },
                {
                    "id": "#duplex_biometrics_coverage_threshold",
                    "type": [
                        "null",
                        "int"
                    ],
                    "label": "duplex_biometrics_coverage_threshold",
                    "doc": "Samples with Y chromosome above this value will be considered male.",
                    "https://www.sevenbridges.com/x": -415.4972229003906,
                    "https://www.sevenbridges.com/y": 578.8967895507812
                },
                {
                    "id": "#duplex_biometrics_major_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "label": "duplex_biometrics_major_threshold",
                    "doc": "Major contamination threshold for bad sample.",
                    "https://www.sevenbridges.com/x": -424.0810241699219,
                    "https://www.sevenbridges.com/y": 279.0644226074219
                },
                {
                    "id": "#duplex_biometrics_minor_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "label": "duplex_biometrics_minor_threshold",
                    "doc": "Minor contamination threshold for bad sample.",
                    "https://www.sevenbridges.com/x": -412.9134216308594,
                    "https://www.sevenbridges.com/y": 428.7292175292969
                },
                {
                    "id": "#collapsed_extraction_files",
                    "type": {
                        "type": "array",
                        "items": "File",
                        "inputBinding": {
                            "position": 0,
                            "prefix": "--input"
                        }
                    },
                    "label": "collapsed_extraction_files",
                    "doc": "Can be one of three types: (1) path to a CSV file containing sample information (one per line). For example: sample_name,sample_bam,sample_type,sample_sex,sample_group. (2) Path to a '*.pk' file that was produced by the 'extract' tool. (3) Name of the sample to analyze; this assumes there is a file named '{sample_name}.pk' in your database directory. Can be specified more than once.",
                    "https://www.sevenbridges.com/x": -397.1647033691406,
                    "https://www.sevenbridges.com/y": 933.3253784179688
                },
                {
                    "id": "#collapsed_biometrics_discordance_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "label": "collapsed_biometrics_discordance_threshold",
                    "doc": "Discordance values less than this are regarded as matching samples. (default: 0.05)",
                    "https://www.sevenbridges.com/x": -397.409912109375,
                    "https://www.sevenbridges.com/y": 1063.6241455078125
                },
                {
                    "id": "#collapsed_biometrics_major_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "label": "collapsed_biometrics_major_threshold",
                    "doc": "Major contamination threshold for bad sample.",
                    "https://www.sevenbridges.com/x": -385.83941650390625,
                    "https://www.sevenbridges.com/y": 1202.94287109375
                },
                {
                    "id": "#collapsed_biometrics_minor_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "label": "collapsed_biometrics_minor_threshold",
                    "doc": "Minor contamination threshold for bad sample.",
                    "https://www.sevenbridges.com/x": -381.01446533203125,
                    "https://www.sevenbridges.com/y": 1344.0721435546875
                },
                {
                    "id": "#collapsed_biometrics_coverage_threshold",
                    "type": [
                        "null",
                        "int"
                    ],
                    "label": "collapsed_biometrics_coverage_threshold",
                    "doc": "Samples with Y chromosome above this value will be considered male.",
                    "https://www.sevenbridges.com/x": -387.0456237792969,
                    "https://www.sevenbridges.com/y": 1481.5826416015625
                },
                {
                    "id": "#simplex_bam_pool_b_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "simplex_bam_pool_b_dir",
                    "https://www.sevenbridges.com/x": -376.6598815917969,
                    "https://www.sevenbridges.com/y": -2307.748291015625
                }
            ],
            "outputs": [
                {
                    "id": "#simplex_bam_pool_a_outdir",
                    "outputSource": [
                        "#simplex_bam_pool_a_agg/directory"
                    ],
                    "type": "Directory",
                    "label": "simplex_bam_pool_a_outdir",
                    "https://www.sevenbridges.com/x": 303.91070556640625,
                    "https://www.sevenbridges.com/y": -2151.46435546875
                },
                {
                    "id": "#duplex_bam_sequence_qc_outdir",
                    "outputSource": [
                        "#duplex_bam_sequence_qc_agg/directory"
                    ],
                    "type": "Directory",
                    "label": "duplex_bam_sequence_qc_outdir",
                    "https://www.sevenbridges.com/x": 299.6883544921875,
                    "https://www.sevenbridges.com/y": -2011.023193359375
                },
                {
                    "id": "#duplex_bam_stats_pool_a_outdir",
                    "outputSource": [
                        "#duplex_bam_stats_pool_a_agg/directory"
                    ],
                    "type": "Directory",
                    "label": "duplex_bam_stats_pool_a_outdir",
                    "https://www.sevenbridges.com/x": 296.5405578613281,
                    "https://www.sevenbridges.com/y": -1858.874755859375
                },
                {
                    "id": "#duplex_bam_stats_pool_b_outdir",
                    "outputSource": [
                        "#duplex_bam_stats_pool_b_agg/directory"
                    ],
                    "type": "Directory",
                    "label": "duplex_bam_stats_pool_b_outdir",
                    "https://www.sevenbridges.com/x": 295.4912414550781,
                    "https://www.sevenbridges.com/y": -1699.3831787109375
                },
                {
                    "id": "#collapsed_bam_stats_pool_a_outdir",
                    "outputSource": [
                        "#collapsed_bam_stats_pool_a_agg/directory"
                    ],
                    "type": "Directory",
                    "label": "collapsed_bam_stats_pool_a_outdir",
                    "https://www.sevenbridges.com/x": 308.08270263671875,
                    "https://www.sevenbridges.com/y": -1550.3843994140625
                },
                {
                    "id": "#collapsed_bam_stats_pool_b_outdir",
                    "outputSource": [
                        "#collapsed_bam_stats_pool_b_agg/directory"
                    ],
                    "type": "Directory",
                    "label": "collapsed_bam_stats_pool_b_outdir",
                    "https://www.sevenbridges.com/x": 301.7869873046875,
                    "https://www.sevenbridges.com/y": -1387.7449951171875
                },
                {
                    "id": "#collapsed_bam_duplex_metrics_pool_a_outdir",
                    "outputSource": [
                        "#collapsed_bam_duplex_metrics_pool_a_agg/directory"
                    ],
                    "type": "Directory",
                    "label": "collapsed_bam_duplex_metrics_pool_a_outdir",
                    "https://www.sevenbridges.com/x": 305.984130859375,
                    "https://www.sevenbridges.com/y": -1228.2532958984375
                },
                {
                    "id": "#collapsed_bam_duplex_metrics_pool_b_outdir",
                    "outputSource": [
                        "#collapsed_bam_duplex_metrics_pool_b_agg/directory"
                    ],
                    "type": "Directory",
                    "label": "collapsed_bam_duplex_metrics_pool_b_outdir",
                    "https://www.sevenbridges.com/x": 312.27984619140625,
                    "https://www.sevenbridges.com/y": -1071.909423828125
                },
                {
                    "id": "#gatk_mean_quality_by_cycle_recal_outdir",
                    "outputSource": [
                        "#gatk_mean_quality_by_cycle_recal_agg/directory"
                    ],
                    "type": "Directory",
                    "label": "gatk_mean_quality_by_cycle_recal_outdir",
                    "https://www.sevenbridges.com/x": 311.2305603027344,
                    "https://www.sevenbridges.com/y": -917.6641235351562
                },
                {
                    "id": "#gatk_mean_quality_by_cycle_outdir",
                    "outputSource": [
                        "#gatk_mean_quality_by_cycle_agg/directory"
                    ],
                    "type": "Directory",
                    "label": "gatk_mean_quality_by_cycle_outdir",
                    "https://www.sevenbridges.com/x": 297.58984375,
                    "https://www.sevenbridges.com/y": -759.2296752929688
                },
                {
                    "id": "#uncollapsed_bam_stats_pool_b_outdir",
                    "outputSource": [
                        "#uncollapsed_bam_stats_pool_b_agg/directory"
                    ],
                    "type": "Directory",
                    "label": "uncollapsed_bam_stats_pool_b_outdir",
                    "https://www.sevenbridges.com/x": 309.6939697265625,
                    "https://www.sevenbridges.com/y": -603.2913818359375
                },
                {
                    "id": "#uncollapsed_bam_stats_pool_a_outdir",
                    "outputSource": [
                        "#uncollapsed_bam_stats_pool_a_agg/directory"
                    ],
                    "type": "Directory",
                    "label": "uncollapsed_bam_stats_pool_a_outdir",
                    "https://www.sevenbridges.com/x": 315.71063232421875,
                    "https://www.sevenbridges.com/y": -451.6719055175781
                },
                {
                    "id": "#duplex_biometrics_outdir",
                    "outputSource": [
                        "#duplex_biometrics_agg/directory"
                    ],
                    "type": "Directory",
                    "label": "duplex_biometrics_outdir",
                    "https://www.sevenbridges.com/x": 735.8389282226562,
                    "https://www.sevenbridges.com/y": 382.3530578613281
                },
                {
                    "id": "#collapsed_biometrics_outdir",
                    "outputSource": [
                        "#collapsed_biometrics_agg/directory"
                    ],
                    "type": "Directory",
                    "label": "collapsed_biometrics_outdir",
                    "https://www.sevenbridges.com/x": 855.2215576171875,
                    "https://www.sevenbridges.com/y": 1238.1143798828125
                },
                {
                    "id": "#simplex_bam_pool_b_outdir",
                    "outputSource": [
                        "#simplex_bam_pool_b_agg/directory"
                    ],
                    "type": "Directory",
                    "label": "simplex_bam_pool_b_outdir",
                    "https://www.sevenbridges.com/x": 302.2002258300781,
                    "https://www.sevenbridges.com/y": -2309.53466796875
                }
            ],
            "steps": [
                {
                    "id": "#duplex_biometrics_genotype",
                    "in": [
                        {
                            "id": "#duplex_biometrics_genotype/input",
                            "source": [
                                "#duplex_extraction_files"
                            ]
                        },
                        {
                            "id": "#duplex_biometrics_genotype/discordance_threshold",
                            "source": "#duplex_biometrics_discordance_threshold"
                        },
                        {
                            "id": "#duplex_biometrics_genotype/plot",
                            "default": true,
                            "source": "#biometrics_plot"
                        },
                        {
                            "id": "#duplex_biometrics_genotype/json",
                            "default": true,
                            "source": "#biometrics_json"
                        },
                        {
                            "id": "#duplex_biometrics_genotype/threads",
                            "source": "#biometrics_threads"
                        }
                    ],
                    "out": [
                        {
                            "id": "#duplex_biometrics_genotype/biometrics_genotype_comparisons"
                        },
                        {
                            "id": "#duplex_biometrics_genotype/biometrics_genotype_cluster_input"
                        },
                        {
                            "id": "#duplex_biometrics_genotype/biometrics_genotype_cluster_input_database"
                        },
                        {
                            "id": "#duplex_biometrics_genotype/biometrics_genotype_plot_input"
                        },
                        {
                            "id": "#duplex_biometrics_genotype/biometrics_genotype_plot_input_database"
                        }
                    ],
                    "run": "#biometrics_genotype.cwl",
                    "https://www.sevenbridges.com/x": 15.982142448425293,
                    "https://www.sevenbridges.com/y": 126.89286041259766
                },
                {
                    "id": "#simplex_bam_pool_a_agg",
                    "in": [
                        {
                            "id": "#simplex_bam_pool_a_agg/files",
                            "source": [
                                "#simplex_bam_pool_a_dir"
                            ]
                        },
                        {
                            "id": "#simplex_bam_pool_a_agg/output_directory_name",
                            "default": "simplex_bam_pool_a_merged_dir"
                        }
                    ],
                    "out": [
                        {
                            "id": "#simplex_bam_pool_a_agg/directory"
                        }
                    ],
                    "run": "#put_in_dir.cwl",
                    "label": "simplex_bam_pool_a_agg",
                    "https://www.sevenbridges.com/x": -5.875,
                    "https://www.sevenbridges.com/y": -2162.16064453125
                },
                {
                    "id": "#duplex_bam_sequence_qc_agg",
                    "in": [
                        {
                            "id": "#duplex_bam_sequence_qc_agg/files",
                            "source": [
                                "#duplex_bam_sequence_qc_dir"
                            ]
                        },
                        {
                            "id": "#duplex_bam_sequence_qc_agg/output_directory_name",
                            "default": "duplex_bam_sequence_qc_merged_dir"
                        }
                    ],
                    "out": [
                        {
                            "id": "#duplex_bam_sequence_qc_agg/directory"
                        }
                    ],
                    "run": "#put_in_dir.cwl",
                    "label": "duplex_bam_sequence_qc_agg",
                    "https://www.sevenbridges.com/x": -12.23218822479248,
                    "https://www.sevenbridges.com/y": -2017.5487060546875
                },
                {
                    "id": "#duplex_bam_stats_pool_a_agg",
                    "in": [
                        {
                            "id": "#duplex_bam_stats_pool_a_agg/files",
                            "source": [
                                "#duplex_bam_stats_pool_a_dir"
                            ]
                        },
                        {
                            "id": "#duplex_bam_stats_pool_a_agg/output_directory_name",
                            "default": "duplex_bam_stats_pool_a_merged_dir"
                        }
                    ],
                    "out": [
                        {
                            "id": "#duplex_bam_stats_pool_a_agg/directory"
                        }
                    ],
                    "run": "#put_in_dir.cwl",
                    "label": "duplex_bam_stats_pool_a_agg",
                    "https://www.sevenbridges.com/x": -6.703541278839111,
                    "https://www.sevenbridges.com/y": -1849.43115234375
                },
                {
                    "id": "#duplex_bam_stats_pool_b_agg",
                    "in": [
                        {
                            "id": "#duplex_bam_stats_pool_b_agg/files",
                            "source": [
                                "#duplex_bam_stats_pool_b_dir"
                            ]
                        },
                        {
                            "id": "#duplex_bam_stats_pool_b_agg/output_directory_name",
                            "default": "duplex_bam_stats_pool_b_merged_dir"
                        }
                    ],
                    "out": [
                        {
                            "id": "#duplex_bam_stats_pool_b_agg/directory"
                        }
                    ],
                    "run": "#put_in_dir.cwl",
                    "label": "duplex_bam_stats_pool_b_agg",
                    "https://www.sevenbridges.com/x": 0.641471266746521,
                    "https://www.sevenbridges.com/y": -1698.333740234375
                },
                {
                    "id": "#collapsed_bam_stats_pool_a_agg",
                    "in": [
                        {
                            "id": "#collapsed_bam_stats_pool_a_agg/files",
                            "source": [
                                "#collapsed_bam_stats_pool_a_dir"
                            ]
                        },
                        {
                            "id": "#collapsed_bam_stats_pool_a_agg/output_directory_name",
                            "default": "collapsed_bam_stats_pool_a_merged_dir"
                        }
                    ],
                    "out": [
                        {
                            "id": "#collapsed_bam_stats_pool_a_agg/directory"
                        }
                    ],
                    "run": "#put_in_dir.cwl",
                    "label": "collapsed_bam_stats_pool_a_agg",
                    "https://www.sevenbridges.com/x": -0.4078298509120941,
                    "https://www.sevenbridges.com/y": -1541.989990234375
                },
                {
                    "id": "#collapsed_bam_stats_pool_b_agg",
                    "in": [
                        {
                            "id": "#collapsed_bam_stats_pool_b_agg/files",
                            "source": [
                                "#collapsed_bam_stats_pool_b_dir"
                            ]
                        },
                        {
                            "id": "#collapsed_bam_stats_pool_b_agg/output_directory_name",
                            "default": "collapsed_bam_stats_pool_b_merged_dir"
                        }
                    ],
                    "out": [
                        {
                            "id": "#collapsed_bam_stats_pool_b_agg/directory"
                        }
                    ],
                    "run": "#put_in_dir.cwl",
                    "label": "collapsed_bam_stats_pool_b_agg",
                    "https://www.sevenbridges.com/x": -2.8983097076416016,
                    "https://www.sevenbridges.com/y": -1377.8983154296875
                },
                {
                    "id": "#collapsed_bam_duplex_metrics_pool_a_agg",
                    "in": [
                        {
                            "id": "#collapsed_bam_duplex_metrics_pool_a_agg/files",
                            "source": [
                                "#collapsed_bam_duplex_metrics_pool_a_dir"
                            ]
                        },
                        {
                            "id": "#collapsed_bam_duplex_metrics_pool_a_agg/output_directory_name",
                            "default": "collapsed_bam_duplex_metrics_pool_a_merged_dir"
                        }
                    ],
                    "out": [
                        {
                            "id": "#collapsed_bam_duplex_metrics_pool_a_agg/directory"
                        }
                    ],
                    "run": "#put_in_dir.cwl",
                    "label": "collapsed_bam_duplex_metrics_pool_a_agg",
                    "https://www.sevenbridges.com/x": 5.887901306152344,
                    "https://www.sevenbridges.com/y": -1220.908203125
                },
                {
                    "id": "#collapsed_bam_duplex_metrics_pool_b_agg",
                    "in": [
                        {
                            "id": "#collapsed_bam_duplex_metrics_pool_b_agg/files",
                            "source": [
                                "#collapsed_bam_duplex_metrics_pool_b_dir"
                            ]
                        },
                        {
                            "id": "#collapsed_bam_duplex_metrics_pool_b_agg/output_directory_name",
                            "default": "collapsed_bam_duplex_metrics_pool_b_merged_dir"
                        }
                    ],
                    "out": [
                        {
                            "id": "#collapsed_bam_duplex_metrics_pool_b_agg/directory"
                        }
                    ],
                    "run": "#put_in_dir.cwl",
                    "label": "collapsed_bam_duplex_metrics_pool_b_agg",
                    "https://www.sevenbridges.com/x": -3.5556864738464355,
                    "https://www.sevenbridges.com/y": -1060.3673095703125
                },
                {
                    "id": "#gatk_mean_quality_by_cycle_recal_agg",
                    "in": [
                        {
                            "id": "#gatk_mean_quality_by_cycle_recal_agg/files",
                            "source": [
                                "#gatk_mean_quality_by_cycle_recal_dir"
                            ]
                        },
                        {
                            "id": "#gatk_mean_quality_by_cycle_recal_agg/output_directory_name",
                            "default": "gatk_mean_quality_by_cycle_recal_merged_dir"
                        }
                    ],
                    "out": [
                        {
                            "id": "#gatk_mean_quality_by_cycle_recal_agg/directory"
                        }
                    ],
                    "run": "#put_in_dir.cwl",
                    "label": "gatk_mean_quality_by_cycle_recal_agg",
                    "https://www.sevenbridges.com/x": -0.4078238010406494,
                    "https://www.sevenbridges.com/y": -913.4669799804688
                },
                {
                    "id": "#gatk_mean_quality_by_cycle_agg",
                    "in": [
                        {
                            "id": "#gatk_mean_quality_by_cycle_agg/files",
                            "source": [
                                "#gatk_mean_quality_by_cycle_dir"
                            ]
                        },
                        {
                            "id": "#gatk_mean_quality_by_cycle_agg/output_directory_name",
                            "default": "gatk_mean_quality_by_cycle_merged_dir"
                        }
                    ],
                    "out": [
                        {
                            "id": "#gatk_mean_quality_by_cycle_agg/directory"
                        }
                    ],
                    "run": "#put_in_dir.cwl",
                    "label": "gatk_mean_quality_by_cycle_agg",
                    "https://www.sevenbridges.com/x": -0.4078238010406494,
                    "https://www.sevenbridges.com/y": -760.27099609375
                },
                {
                    "id": "#uncollapsed_bam_stats_pool_b_agg",
                    "in": [
                        {
                            "id": "#uncollapsed_bam_stats_pool_b_agg/files",
                            "source": [
                                "#uncollapsed_bam_stats_pool_b_dir"
                            ]
                        },
                        {
                            "id": "#uncollapsed_bam_stats_pool_b_agg/output_directory_name",
                            "default": "uncollapsed_bam_stats_pool_b_merged_dir"
                        }
                    ],
                    "out": [
                        {
                            "id": "#uncollapsed_bam_stats_pool_b_agg/directory"
                        }
                    ],
                    "run": "#put_in_dir.cwl",
                    "label": "uncollapsed_bam_stats_pool_b_agg",
                    "https://www.sevenbridges.com/x": 3.083235740661621,
                    "https://www.sevenbridges.com/y": -601.083251953125
                },
                {
                    "id": "#uncollapsed_bam_stats_pool_a_agg",
                    "in": [
                        {
                            "id": "#uncollapsed_bam_stats_pool_a_agg/files",
                            "source": [
                                "#uncollapsed_bam_stats_pool_a_dir"
                            ]
                        },
                        {
                            "id": "#uncollapsed_bam_stats_pool_a_agg/output_directory_name",
                            "default": "uncollapsed_bam_stats_pool_a_merged_dir"
                        }
                    ],
                    "out": [
                        {
                            "id": "#uncollapsed_bam_stats_pool_a_agg/directory"
                        }
                    ],
                    "run": "#put_in_dir.cwl",
                    "label": "uncollapsed_bam_stats_pool_a_agg",
                    "https://www.sevenbridges.com/x": 3.8133177757263184,
                    "https://www.sevenbridges.com/y": -457.1498107910156
                },
                {
                    "id": "#duplex_biometrics_major",
                    "in": [
                        {
                            "id": "#duplex_biometrics_major/input",
                            "source": [
                                "#duplex_extraction_files"
                            ]
                        },
                        {
                            "id": "#duplex_biometrics_major/major_threshold",
                            "source": "#duplex_biometrics_major_threshold"
                        },
                        {
                            "id": "#duplex_biometrics_major/plot",
                            "default": true,
                            "source": "#biometrics_plot"
                        },
                        {
                            "id": "#duplex_biometrics_major/json",
                            "default": true,
                            "source": "#biometrics_json"
                        }
                    ],
                    "out": [
                        {
                            "id": "#duplex_biometrics_major/biometrics_major_csv"
                        },
                        {
                            "id": "#duplex_biometrics_major/biometrics_major_json"
                        },
                        {
                            "id": "#duplex_biometrics_major/biometrics_major_plot"
                        }
                    ],
                    "run": "#biometrics_major.cwl",
                    "label": "duplex_biometrics_major",
                    "https://www.sevenbridges.com/x": 19.419479370117188,
                    "https://www.sevenbridges.com/y": 303.0918273925781
                },
                {
                    "id": "#duplex_biometrics_minor",
                    "in": [
                        {
                            "id": "#duplex_biometrics_minor/input",
                            "source": [
                                "#duplex_extraction_files"
                            ]
                        },
                        {
                            "id": "#duplex_biometrics_minor/minor_threshold",
                            "source": "#duplex_biometrics_minor_threshold"
                        },
                        {
                            "id": "#duplex_biometrics_minor/plot",
                            "default": true,
                            "source": "#biometrics_plot"
                        },
                        {
                            "id": "#duplex_biometrics_minor/json",
                            "default": true,
                            "source": "#biometrics_json"
                        }
                    ],
                    "out": [
                        {
                            "id": "#duplex_biometrics_minor/biometrics_minor_csv"
                        },
                        {
                            "id": "#duplex_biometrics_minor/biometrics_minor_json"
                        },
                        {
                            "id": "#duplex_biometrics_minor/biometrics_minor_plot"
                        },
                        {
                            "id": "#duplex_biometrics_minor/biometrics_minor_sites_plot"
                        }
                    ],
                    "run": "#biometrics_minor.cwl",
                    "label": "duplex_biometrics_minor",
                    "https://www.sevenbridges.com/x": 17.838956832885742,
                    "https://www.sevenbridges.com/y": 492.78192138671875
                },
                {
                    "id": "#duplex_biometrics_sexmismatch",
                    "in": [
                        {
                            "id": "#duplex_biometrics_sexmismatch/input",
                            "source": [
                                "#duplex_extraction_files"
                            ]
                        },
                        {
                            "id": "#duplex_biometrics_sexmismatch/coverage_threshold",
                            "source": "#duplex_biometrics_coverage_threshold"
                        },
                        {
                            "id": "#duplex_biometrics_sexmismatch/json",
                            "default": true
                        }
                    ],
                    "out": [
                        {
                            "id": "#duplex_biometrics_sexmismatch/biometrics_sexmismatch_csv"
                        },
                        {
                            "id": "#duplex_biometrics_sexmismatch/biometrics_sexmismatch_json"
                        }
                    ],
                    "run": "#biometrics_sexmismatch.cwl",
                    "label": "duplex_biometrics_sexmismatch",
                    "https://www.sevenbridges.com/x": 12.246261596679688,
                    "https://www.sevenbridges.com/y": 665.076904296875
                },
                {
                    "id": "#duplex_biometrics_agg",
                    "in": [
                        {
                            "id": "#duplex_biometrics_agg/files",
                            "source": [
                                "#duplex_biometrics_genotype/biometrics_genotype_plot_input_database",
                                "#duplex_biometrics_genotype/biometrics_genotype_plot_input",
                                "#duplex_biometrics_genotype/biometrics_genotype_comparisons",
                                "#duplex_biometrics_genotype/biometrics_genotype_cluster_input_database",
                                "#duplex_biometrics_genotype/biometrics_genotype_cluster_input",
                                "#duplex_biometrics_major/biometrics_major_plot",
                                "#duplex_biometrics_major/biometrics_major_json",
                                "#duplex_biometrics_major/biometrics_major_csv",
                                "#duplex_biometrics_minor/biometrics_minor_sites_plot",
                                "#duplex_biometrics_minor/biometrics_minor_plot",
                                "#duplex_biometrics_minor/biometrics_minor_json",
                                "#duplex_biometrics_minor/biometrics_minor_csv",
                                "#duplex_biometrics_sexmismatch/biometrics_sexmismatch_json",
                                "#duplex_biometrics_sexmismatch/biometrics_sexmismatch_csv"
                            ]
                        },
                        {
                            "id": "#duplex_biometrics_agg/output_directory_name",
                            "default": "duplex_biometrics_output"
                        }
                    ],
                    "out": [
                        {
                            "id": "#duplex_biometrics_agg/directory"
                        }
                    ],
                    "run": "#put_in_dir.cwl",
                    "label": "duplex_biometrics_agg",
                    "https://www.sevenbridges.com/x": 432.8553466796875,
                    "https://www.sevenbridges.com/y": 381.737060546875
                },
                {
                    "id": "#collapsed_biometrics_genotype",
                    "in": [
                        {
                            "id": "#collapsed_biometrics_genotype/input",
                            "source": [
                                "#collapsed_extraction_files"
                            ]
                        },
                        {
                            "id": "#collapsed_biometrics_genotype/discordance_threshold",
                            "source": "#collapsed_biometrics_discordance_threshold"
                        },
                        {
                            "id": "#collapsed_biometrics_genotype/plot",
                            "default": true,
                            "source": "#biometrics_plot"
                        },
                        {
                            "id": "#collapsed_biometrics_genotype/json",
                            "default": true,
                            "source": "#biometrics_json"
                        },
                        {
                            "id": "#collapsed_biometrics_genotype/threads",
                            "source": "#biometrics_threads"
                        }
                    ],
                    "out": [
                        {
                            "id": "#collapsed_biometrics_genotype/biometrics_genotype_comparisons"
                        },
                        {
                            "id": "#collapsed_biometrics_genotype/biometrics_genotype_cluster_input"
                        },
                        {
                            "id": "#collapsed_biometrics_genotype/biometrics_genotype_cluster_input_database"
                        },
                        {
                            "id": "#collapsed_biometrics_genotype/biometrics_genotype_plot_input"
                        },
                        {
                            "id": "#collapsed_biometrics_genotype/biometrics_genotype_plot_input_database"
                        }
                    ],
                    "run": "#biometrics_genotype.cwl",
                    "label": "collapsed_biometrics_genotype",
                    "https://www.sevenbridges.com/x": 30.168201446533203,
                    "https://www.sevenbridges.com/y": 924.2750244140625
                },
                {
                    "id": "#collapsed_biometrics_major",
                    "in": [
                        {
                            "id": "#collapsed_biometrics_major/input",
                            "source": [
                                "#collapsed_extraction_files"
                            ]
                        },
                        {
                            "id": "#collapsed_biometrics_major/major_threshold",
                            "default": 0.6,
                            "source": "#collapsed_biometrics_major_threshold"
                        },
                        {
                            "id": "#collapsed_biometrics_major/plot",
                            "default": true,
                            "source": "#biometrics_plot"
                        },
                        {
                            "id": "#collapsed_biometrics_major/json",
                            "default": true,
                            "source": "#biometrics_json"
                        }
                    ],
                    "out": [
                        {
                            "id": "#collapsed_biometrics_major/biometrics_major_csv"
                        },
                        {
                            "id": "#collapsed_biometrics_major/biometrics_major_json"
                        },
                        {
                            "id": "#collapsed_biometrics_major/biometrics_major_plot"
                        }
                    ],
                    "run": "#biometrics_major.cwl",
                    "label": "collapsed_biometrics_major",
                    "https://www.sevenbridges.com/x": 37.61433792114258,
                    "https://www.sevenbridges.com/y": 1125.25341796875
                },
                {
                    "id": "#collapsed_biometrics_minor",
                    "in": [
                        {
                            "id": "#collapsed_biometrics_minor/input",
                            "source": [
                                "#collapsed_extraction_files"
                            ]
                        },
                        {
                            "id": "#collapsed_biometrics_minor/minor_threshold",
                            "default": 0.002,
                            "source": "#collapsed_biometrics_minor_threshold"
                        },
                        {
                            "id": "#collapsed_biometrics_minor/plot",
                            "default": true,
                            "source": "#biometrics_plot"
                        },
                        {
                            "id": "#collapsed_biometrics_minor/json",
                            "default": true,
                            "source": "#biometrics_json"
                        },
                        {
                            "id": "#collapsed_biometrics_minor/no_db_comparison",
                            "default": false
                        }
                    ],
                    "out": [
                        {
                            "id": "#collapsed_biometrics_minor/biometrics_minor_csv"
                        },
                        {
                            "id": "#collapsed_biometrics_minor/biometrics_minor_json"
                        },
                        {
                            "id": "#collapsed_biometrics_minor/biometrics_minor_plot"
                        },
                        {
                            "id": "#collapsed_biometrics_minor/biometrics_minor_sites_plot"
                        }
                    ],
                    "run": "#biometrics_minor.cwl",
                    "label": "collapsed_biometrics_minor",
                    "https://www.sevenbridges.com/x": 37.22428512573242,
                    "https://www.sevenbridges.com/y": 1325.6654052734375
                },
                {
                    "id": "#collapsed_biometrics_sexmismatch",
                    "in": [
                        {
                            "id": "#collapsed_biometrics_sexmismatch/input",
                            "source": [
                                "#collapsed_extraction_files"
                            ]
                        },
                        {
                            "id": "#collapsed_biometrics_sexmismatch/coverage_threshold",
                            "source": "#collapsed_biometrics_coverage_threshold"
                        },
                        {
                            "id": "#collapsed_biometrics_sexmismatch/json",
                            "default": true,
                            "source": "#biometrics_json"
                        }
                    ],
                    "out": [
                        {
                            "id": "#collapsed_biometrics_sexmismatch/biometrics_sexmismatch_csv"
                        },
                        {
                            "id": "#collapsed_biometrics_sexmismatch/biometrics_sexmismatch_json"
                        }
                    ],
                    "run": "#biometrics_sexmismatch.cwl",
                    "label": "collapsed_biometrics_sexmismatch",
                    "https://www.sevenbridges.com/x": 38.33828353881836,
                    "https://www.sevenbridges.com/y": 1529
                },
                {
                    "id": "#collapsed_biometrics_agg",
                    "in": [
                        {
                            "id": "#collapsed_biometrics_agg/files",
                            "source": [
                                "#collapsed_biometrics_genotype/biometrics_genotype_plot_input_database",
                                "#collapsed_biometrics_genotype/biometrics_genotype_plot_input",
                                "#collapsed_biometrics_genotype/biometrics_genotype_comparisons",
                                "#collapsed_biometrics_genotype/biometrics_genotype_cluster_input_database",
                                "#collapsed_biometrics_genotype/biometrics_genotype_cluster_input",
                                "#collapsed_biometrics_major/biometrics_major_plot",
                                "#collapsed_biometrics_major/biometrics_major_json",
                                "#collapsed_biometrics_major/biometrics_major_csv",
                                "#collapsed_biometrics_minor/biometrics_minor_sites_plot",
                                "#collapsed_biometrics_minor/biometrics_minor_plot",
                                "#collapsed_biometrics_minor/biometrics_minor_json",
                                "#collapsed_biometrics_minor/biometrics_minor_csv",
                                "#collapsed_biometrics_sexmismatch/biometrics_sexmismatch_json",
                                "#collapsed_biometrics_sexmismatch/biometrics_sexmismatch_csv"
                            ]
                        },
                        {
                            "id": "#collapsed_biometrics_agg/output_directory_name",
                            "default": "collapsed_biometrics_output"
                        }
                    ],
                    "out": [
                        {
                            "id": "#collapsed_biometrics_agg/directory"
                        }
                    ],
                    "run": "#put_in_dir.cwl",
                    "label": "collapsed_biometrics_agg",
                    "https://www.sevenbridges.com/x": 585.7066650390625,
                    "https://www.sevenbridges.com/y": 1235.0516357421875
                },
                {
                    "id": "#simplex_bam_pool_b_agg",
                    "in": [
                        {
                            "id": "#simplex_bam_pool_b_agg/files",
                            "source": [
                                "#simplex_bam_pool_b_dir"
                            ]
                        },
                        {
                            "id": "#simplex_bam_pool_b_agg/output_directory_name",
                            "default": "simplex_bam_pool_b_merged_dir"
                        }
                    ],
                    "out": [
                        {
                            "id": "#simplex_bam_pool_b_agg/directory"
                        }
                    ],
                    "run": "#put_in_dir.cwl",
                    "label": "simplex_bam_pool_b_agg",
                    "https://www.sevenbridges.com/x": 2.071298837661743,
                    "https://www.sevenbridges.com/y": -2311.31787109375
                }
            ],
            "requirements": [
                {
                    "class": "MultipleInputFeatureRequirement"
                }
            ],
            "$namespaces": {
                "sbg": "https://www.sevenbridges.com/"
            }
        },
        {
            "class": "CommandLineTool",
            "id": "#biometrics_genotype.cwl",
            "baseCommand": [
                "biometrics",
                "genotype"
            ],
            "inputs": [
                {
                    "id": "#biometrics_genotype.cwl/input",
                    "type": [
                        {
                            "type": "array",
                            "items": "File",
                            "inputBinding": {
                                "position": 0,
                                "prefix": "--input"
                            }
                        }
                    ],
                    "doc": "Can be one of three types: (1) path to a CSV file containing sample information (one per line). For example: sample_name,sample_bam,sample_type,sample_sex,sample_group. (2) Path to a '*.pk' file that was produced by the 'extract' tool. (3) Name of the sample to analyze; this assumes there is a file named '{sample_name}.pk' in your database directory. Can be specified more than once."
                },
                {
                    "id": "#biometrics_genotype.cwl/database",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--database"
                    },
                    "doc": "Directory to store the intermediate files after running the extraction step."
                },
                {
                    "id": "#biometrics_genotype.cwl/discordance_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "default": 0.05,
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--discordance-threshold"
                    },
                    "doc": "Discordance values less than this are regarded as matching samples. (default: 0.05)"
                },
                {
                    "id": "#biometrics_genotype.cwl/prefix",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--prefix"
                    },
                    "doc": "Output file prefix."
                },
                {
                    "id": "#biometrics_genotype.cwl/plot",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--plot"
                    },
                    "doc": "Also output plots of the data."
                },
                {
                    "id": "#biometrics_genotype.cwl/json",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--json"
                    },
                    "doc": "Also output data in JSON format."
                },
                {
                    "id": "#biometrics_genotype.cwl/no_db_comparison",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--no-db-compare"
                    },
                    "doc": "Do not compare the sample(s) you provided to all samples in the database, only compare them with each other."
                },
                {
                    "id": "#biometrics_genotype.cwl/threads",
                    "type": [
                        "null",
                        "int"
                    ],
                    "default": 2,
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--threads"
                    },
                    "doc": "Number of threads to use."
                }
            ],
            "outputs": [
                {
                    "id": "#biometrics_genotype.cwl/biometrics_genotype_comparisons",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n  if (inputs.prefix) {\n    return inputs.prefix + '_genotype_comparison.csv'\n  } else {\n    return 'genotype_comparison.csv'\n  }\n}"
                    }
                },
                {
                    "id": "#biometrics_genotype.cwl/biometrics_genotype_cluster_input",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n  if (inputs.prefix) {\n    return inputs.prefix + '_genotype_clusters_input.csv'\n  } else {\n    return 'genotype_clusters_input.csv'\n  }\n}"
                    }
                },
                {
                    "id": "#biometrics_genotype.cwl/biometrics_genotype_cluster_input_database",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n  if (inputs.prefix) {\n    return inputs.prefix + '_genotype_clusters_database.csv'\n  } else {\n    return 'genotype_clusters_database.csv'\n  }\n}"
                    }
                },
                {
                    "id": "#biometrics_genotype.cwl/biometrics_genotype_plot_input",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n  return 'genotype_comparison_input.html'\n}"
                    }
                },
                {
                    "id": "#biometrics_genotype.cwl/biometrics_genotype_plot_input_database",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n  return 'genotype_comparison_database.html'\n}"
                    }
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 16000,
                    "coresMin": 2
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/biometrics:0.2.9"
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
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
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
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "biometrics",
                    "http://usefulinc.com/ns/doap#revision": "0.2.9"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#biometrics_major.cwl",
            "baseCommand": [
                "biometrics",
                "major"
            ],
            "inputs": [
                {
                    "id": "#biometrics_major.cwl/input",
                    "type": {
                        "type": "array",
                        "items": "File",
                        "inputBinding": {
                            "prefix": "--input"
                        }
                    },
                    "inputBinding": {
                        "position": 0
                    },
                    "doc": "Can be one of three types: (1) path to a CSV file containing sample information (one per line). For example: sample_name,sample_bam,sample_type,sample_sex,sample_group. (2) Path to a '*.pk' file that was produced by the 'extract' tool. (3) Name of the sample to analyze; this assumes there is a file named '{sample_name}.pk' in your database directory. Can be specified more than once."
                },
                {
                    "id": "#biometrics_major.cwl/database",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--database"
                    },
                    "doc": "Directory to store the intermediate files after running the extraction step."
                },
                {
                    "id": "#biometrics_major.cwl/major_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "default": 0.6,
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--major-threshold"
                    },
                    "doc": "Major contamination threshold for bad sample."
                },
                {
                    "id": "#biometrics_major.cwl/prefix",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--prefix"
                    },
                    "doc": "Output file prefix."
                },
                {
                    "id": "#biometrics_major.cwl/plot",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--plot"
                    },
                    "doc": "Also output plots of the data."
                },
                {
                    "id": "#biometrics_major.cwl/json",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--json"
                    },
                    "doc": "Also output data in JSON format."
                },
                {
                    "id": "#biometrics_major.cwl/no_db_comparison",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--no-db-compare"
                    },
                    "doc": "Do not compare the sample(s) you provided to all samples in the database, only compare them with each other."
                }
            ],
            "outputs": [
                {
                    "id": "#biometrics_major.cwl/biometrics_major_csv",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if (inputs.prefix) {\n      return inputs.prefix + '_major_contamination.csv'\n    } else {\n      return 'major_contamination.csv'\n    }\n}"
                    }
                },
                {
                    "id": "#biometrics_major.cwl/biometrics_major_json",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n    if (inputs.prefix) {\n      return inputs.prefix + '_major_contamination.json'\n    } else {\n      return 'major_contamination.json'\n    }\n}"
                    }
                },
                {
                    "id": "#biometrics_major.cwl/biometrics_major_plot",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n  return 'major_contamination.html'\n}"
                    }
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 16000,
                    "coresMin": 2
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/biometrics:0.2.9"
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
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
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
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "biometrics",
                    "http://usefulinc.com/ns/doap#revision": "0.2.9"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#biometrics_minor.cwl",
            "baseCommand": [
                "biometrics",
                "minor"
            ],
            "inputs": [
                {
                    "id": "#biometrics_minor.cwl/input",
                    "type": {
                        "type": "array",
                        "items": "File",
                        "inputBinding": {
                            "prefix": "--input"
                        }
                    },
                    "inputBinding": {
                        "position": 0
                    },
                    "doc": "Can be one of three types: (1) path to a CSV file containing sample information (one per line). For example: sample_name,sample_bam,sample_type,sample_sex,sample_group. (2) Path to a '*.pk' file that was produced by the 'extract' tool. (3) Name of the sample to analyze; this assumes there is a file named '{sample_name}.pk' in your database directory. Can be specified more than once."
                },
                {
                    "id": "#biometrics_minor.cwl/database",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--database"
                    },
                    "doc": "Directory to store the intermediate files after running the extraction step."
                },
                {
                    "id": "#biometrics_minor.cwl/minor_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "default": 0.002,
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--minor-threshold"
                    },
                    "doc": "Minor contamination threshold for bad sample."
                },
                {
                    "id": "#biometrics_minor.cwl/prefix",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--prefix"
                    },
                    "doc": "Output file prefix."
                },
                {
                    "id": "#biometrics_minor.cwl/plot",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--plot"
                    },
                    "doc": "Also output plots of the data."
                },
                {
                    "id": "#biometrics_minor.cwl/json",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--json"
                    },
                    "doc": "Also output data in JSON format."
                },
                {
                    "id": "#biometrics_minor.cwl/no_db_comparison",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--no-db-compare"
                    },
                    "doc": "Do not compare the sample(s) you provided to all samples in the database, only compare them with each other."
                }
            ],
            "outputs": [
                {
                    "id": "#biometrics_minor.cwl/biometrics_minor_csv",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if (inputs.prefix) {\n      return inputs.prefix + '_minor_contamination.csv'\n    } else {\n      return 'minor_contamination.csv'\n    }\n}"
                    }
                },
                {
                    "id": "#biometrics_minor.cwl/biometrics_minor_json",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n    if (inputs.prefix) {\n      return inputs.prefix + '_minor_contamination.json'\n    } else {\n      return 'minor_contamination.json'\n    }\n}"
                    }
                },
                {
                    "id": "#biometrics_minor.cwl/biometrics_minor_plot",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n  return 'minor_contamination.html'\n}"
                    }
                },
                {
                    "id": "#biometrics_minor.cwl/biometrics_minor_sites_plot",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n  return 'minor_contamination_sites.html'\n}"
                    }
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 16000,
                    "coresMin": 2
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/biometrics:0.2.9"
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
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
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
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "biometrics",
                    "http://usefulinc.com/ns/doap#revision": "0.2.9"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#biometrics_sexmismatch.cwl",
            "baseCommand": [
                "biometrics",
                "sexmismatch"
            ],
            "inputs": [
                {
                    "id": "#biometrics_sexmismatch.cwl/input",
                    "type": {
                        "type": "array",
                        "items": "File",
                        "inputBinding": {
                            "prefix": "--input"
                        }
                    },
                    "inputBinding": {
                        "position": 0
                    },
                    "doc": "Can be one of three types: (1) path to a CSV file containing sample information (one per line). For example: sample_name,sample_bam,sample_type,sample_sex,sample_group. (2) Path to a '*.pk' file that was produced by the 'extract' tool. (3) Name of the sample to analyze; this assumes there is a file named '{sample_name}.pk' in your database directory. Can be specified more than once."
                },
                {
                    "id": "#biometrics_sexmismatch.cwl/database",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--database"
                    },
                    "doc": "Directory to store the intermediate files after running the extraction step."
                },
                {
                    "id": "#biometrics_sexmismatch.cwl/coverage_threshold",
                    "type": [
                        "null",
                        "int"
                    ],
                    "default": 50,
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--coverage-threshold"
                    },
                    "doc": "Samples with Y chromosome above this value will be considered male."
                },
                {
                    "id": "#biometrics_sexmismatch.cwl/prefix",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--prefix"
                    },
                    "doc": "Output file prefix."
                },
                {
                    "id": "#biometrics_sexmismatch.cwl/json",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--json"
                    },
                    "doc": "Also output data in JSON format."
                },
                {
                    "id": "#biometrics_sexmismatch.cwl/no_db_comparison",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--no-db-compare"
                    },
                    "doc": "Do not compare the sample(s) you provided to all samples in the database, only compare them with each other."
                }
            ],
            "outputs": [
                {
                    "id": "#biometrics_sexmismatch.cwl/biometrics_sexmismatch_csv",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if (inputs.prefix) {\n      return inputs.prefix + '_sex_mismatch.csv'\n    } else {\n      return 'sex_mismatch.csv'\n    }\n}"
                    }
                },
                {
                    "id": "#biometrics_sexmismatch.cwl/biometrics_sexmismatch_json",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n    if (inputs.prefix) {\n      return inputs.prefix + '_sex_mismatch.json'\n    } else {\n      return 'sex_mismatch.json'\n    }\n}"
                    }
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 16000,
                    "coresMin": 2
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/biometrics:0.2.9"
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
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
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
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "biometrics",
                    "http://usefulinc.com/ns/doap#revision": "0.2.9"
                }
            ]
        },
        {
            "class": "ExpressionTool",
            "id": "#put_in_dir.cwl",
            "inputs": [
                {
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "id": "#put_in_dir.cwl/files"
                },
                {
                    "type": "string",
                    "id": "#put_in_dir.cwl/output_directory_name"
                }
            ],
            "outputs": [
                {
                    "type": "Directory",
                    "id": "#put_in_dir.cwl/directory"
                }
            ],
            "expression": "${\n  var output_files = [];\n  var input_files = inputs.files.filter(function(single_file) {\n    return String(single_file).toUpperCase() != 'NONE';\n  });\n\n  for (var i = 0; i < input_files.length; i++) {\n    if(input_files[i]){\n      output_files.push(input_files[i]);\n    }\n  }\n\n  return {\n    'directory': {\n      'class': 'Directory',\n      'basename': inputs.output_directory_name,\n      'listing': output_files\n    }\n  };\n}\n",
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 2000,
                    "coresMin": 1
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
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
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
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ]
        }
    ],
    "cwlVersion": "v1.0"
}