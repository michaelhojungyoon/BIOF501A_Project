#!/usr/bin/env nextflow

nextflow.enable.dsl=2

params.name = "sequences/*fastq.gz"
params.split = "sequences/*noext"
params.fastp = "sequences/sequences_split/*_R{1,2}.fastq"
params.gzip = "results/fastp*_{R1,R2}.fastq"

workflow {

name_ch = Channel.fromPath(params.name)
NAME(name_ch)
NAME.out.view()

split_ch = Channel.fromPath(params.split)
SPLIT(split_ch)
SPLIT.out.view()

readgroups = Channel.fromFilePairs(params.fastp)
FASTP(readgroups)
FASTP.out.fastp.view()

gzip_ch = Channel.fromPath(params.gzip)
GZIP(gzip_ch)
GZIP.out.view()

}

process NAME {
input:
    path read
output:
    stdout
script:
    """
    for file in ${baseDir}/sequences/*.fastq.gz; do  
        cp -- "\$file" "\${file%%.*}.noext"
    done
    """
}

process SPLIT {
input:
    path read
output:
    stdout
script:
    """
    zcat ${read} | awk 'NR%8==1{c=4} c&&c--' > $baseDir/sequences/sequences_split/${read}_R1.fastq |
    zcat ${read} | awk 'NR%8==5{c=4} c&&c--' > $baseDir/sequences/sequences_split/${read}_R2.fastq
    """
}

process FASTP {
input:
    tuple val(sample), path(reads)

output:
    tuple val(sample), path("fastp_${sample}_R{1,2}.fastq"), emit: fastp
    path("fastp_${sample}.fastp.html"), emit: html

script:
def (r1, r2) = reads
    """
    fastp \\
        --in1 "${r1}" \\
        --in2 "${r2}" \\
        --out1 "fastp_${sample}_R1.fastq" \\
        --out2 "fastp_${sample}_R2.fastq" \\
        --html fastp_${sample}.fastp.html
    """
}

process GZIP {
input:
    path read
output:
    stdout
script:
    """
    gzip -f ${baseDir}/results/${read}
    """
}