// your AWS_ENDPOINT values should be set in .docker/local.env
// this file is to provide a value when running tests locally outside of the container
// TODO: if you don't have any localstack integration tests, you can delete this file
process.env.AWS_ENDPOINT = process.env.AWS_ENDPOINT || 'http://localhost:4566';
