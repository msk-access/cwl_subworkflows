---
description: >-
  How to install and run the sub-workflows
---

# Installation and Usage

## Step 1: Create a virtual environment.

### Option \(A\) - if using cwltool

If you are using cwltool only, please proceed using python 3.7 as done below:

Here we can use either [virtualenv](https://virtualenv.pypa.io/) or [conda](https://docs.conda.io/en/latest/). Here we will use virtualenv.

{% code-tabs %}
{% code-tabs-item title="python3-virtualenv" %}
```bash
pip3 install virtualenv
python3 -m venv my_project
source my_project/bin/activate
```
{% endcode-tabs-item %}
{% endcode-tabs %}

### Option \(B\) - recommended for Juno HPC cluster

If you are using toil, python 2 is required. Please install using Python 2.7 as done below:

Here we can use either [virtualenv](https://virtualenv.pypa.io/) or [conda](https://docs.conda.io/en/latest/). Here we will use virtualenv.

{% code-tabs %}
{% code-tabs-item title="python2-virtaulenv" %}
```bash
pip install virtualenv
virtualenv my_project
source my_project/bin/activate
```
{% endcode-tabs-item %}
{% endcode-tabs %}

{% hint style="info" %}
Once you execute the above command you will see your bash prompt something on this lines: 

{% code-tabs %}
{% code-tabs-item title="bash-prompt-example" %}
```bash
(my_project)[server]$ 
```
{% endcode-tabs-item %}
{% endcode-tabs %}
{% endhint %}



## Step 2: Clone the repository

{% code-tabs %}
{% code-tabs-item title="git-clone-with-submodule" %}
```bash
git clone --recursive https://github.com/msk-access/cwl_subworkflows.git
cd cwl_subworkflows
git submodule update --recursive --remote
```
{% endcode-tabs-item %}
{% endcode-tabs %}

## Step 3: Install requirements using pip

We have already specified the version of cwltool and other packages in the requirements.txt file. Please use this to install.

{% code-tabs %}
{% code-tabs-item title="python-package-installation-using-pip" %}
```bash
#python2
pip install -r requirements.txt
#python3
pip3 install -r requirements.txt
```
{% endcode-tabs-item %}
{% endcode-tabs %}

## Step 4: Generate an inputs file

Next you must generate a proper input file in either [json](https://www.json.org/) or [yaml](https://yaml.org/) format.

For details on how to create this file, please follow this example:

{% page-ref page="inputs-description.md" %}

It's also possible to create and fill in a "template" inputs file using this command:

```text
$ cwltool --make-template alignment.cwl > inputs.yaml
```

{% hint style="info" %}
Note: To see help for the inputs for cwl workflow you can use: `toil-cwl-runner alignment.cwl --help`

This same applies to all the `*.cwl` files in this repository
{% endhint %}

Once we have successfully installed the requirements we can now run the workflow using _cwltool/toil_ .

## Step 5: Run the workflow

{% tabs %}
{% tab title="Using cwltool" %}
Here we show how to use [cwltool](https://github.com/common-workflow-language/cwltool) to run the workflow on a single machine, such as a laptop

#### Run the workflow with a given set of input using [cwltool](https://github.com/common-workflow-language/cwltool) on single machine

{% code-tabs %}
{% code-tabs-item title="cwltool-execution" %}
```bash
cwltool alignment.cwl inputs.yaml
```
{% endcode-tabs-item %}
{% endcode-tabs %}
{% endtab %}

{% tab title="Using toil-cwl-runner locally" %}
Here we show how to run the workflow using [toil-cwl-runner](https://toil.readthedocs.io/en/latest/running/introduction.html) using single machine interface

Once we have successfully installed the requirements we can now run the workflow using _cwltool_ if you have proper input file generated either in [json](https://www.json.org/) or [yaml](https://yaml.org/) format. Please look at [Inputs Description](inputs-description.md) for more details.

#### Run the workflow with a given set of input using [toil](https://toil.readthedocs.io/en/latest/running/introduction.html) on single machine

{% code-tabs %}
{% code-tabs-item title="toil-local-execution" %}
```bash
toil-cwl-runner alignment.cwl inputs.yaml
```
{% endcode-tabs-item %}
{% endcode-tabs %}
{% endtab %}

{% tab title="Using toil-cwl-runner on JUNO" %}
Here we show how to run the workflow using [toil-cwl-runner](https://toil.readthedocs.io/en/latest/running/introduction.html) on MSKCC internal compute cluster called JUNO which has [IBM LSF](https://www.ibm.com/support/knowledgecenter/en/SSETD4/product_welcome_platform_lsf.html) as a scheduler. 

Note the use of `--singularity`to convert Docker containers into singularity containers, the `TMPDIR`envirionment variable to avoid writing temporary files to shared disk space, and `TOIl_LSF_ARGS` to specify any additional arguments to `bsub`commands that the jobs should have \(in this case, setting a max walltime of 6 hours\).

Run the workflow with a given set of input using [toil](https://toil.readthedocs.io/en/latest/running/introduction.html) on JUNO \(MSKCC Research Cluster\)

{% code-tabs %}
{% code-tabs-item title="toil-lsf-execution" %}
```bash
TMPDIR=$PWD
TOIL_LSF_ARGS='-W 3600'
toil-cwl-runner \
       --singularity \
       --logFile ./example.log  \
       --jobStore ./example_jobStore \
       --batchSystem lsf \
       --workDir ./example_working_directory/ \
       --outdir $PWD \
       --writeLogs ./example_log_folder/ \
       --logLevel DEBUG \
       --stats \
       --retryCount 2 
       --disableCaching \
       --disableChaining \
       --maxLogFileSize 20000000000 \
       --cleanWorkDir onSuccess
       --preserve-environment TOIL_LSF_ARGS TMPDIR \
       alignment.cwl \
       inputs.yaml \
       > toil.stdout \
       2> toil.stderr &
```
{% endcode-tabs-item %}
{% endcode-tabs %}
{% endtab %}
{% endtabs %}

{% hint style="success" %}
Your workflow should now be running on the specified batch system. See [outputs](outputs-description.md) for a description of the resulting files when is it completed.
{% endhint %}

