# Publishdir test pipeline

A simple pipeline to test publishDir directive.
- though for local workflow execution
- one pipeline step that creates 3 "hello world" files and copies them to the location specified by `outdir` parameter.
- if no parameter is passed, the files are copied to a `defaultOutDir` in the workflow's work folder