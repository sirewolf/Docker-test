node {
    checkout scm

    docker.withServer('tcp://docker:2376', 'docker') {
        docker.image('mysql:5').withRun('-p 3306:3306') {
        }
    }
}
