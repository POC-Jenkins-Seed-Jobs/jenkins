job('demo') {
    steps {
        shell('echo hello world !')
        dockerBuildAndPublish {
            repositoryName('example/project-a')
            tag('${BUILD_TIMESTAMP}-${GIT_REVISION,length=7}')
            registryCredentials('docker-hub')
            forcePull(false)
            createFingerprints(false)
            skipDecorate()
        }
    }
}