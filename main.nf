#!/usr/bin/env nextflow

process TEST_PUBLISH_DIR {

    publishDir { params.outdir ?: file(workflow.workDir).resolve("defaultOutDir").toUriString()  }, mode: 'copy'

    input: 
        val x
    output:
        path("*.txt")
    script:
        """
        echo '$x world!' > ${x}.txt
        """
}

workflow {
  Channel.of('Bonjour', 'Ciao', 'Hello') | TEST_PUBLISH_DIR
}