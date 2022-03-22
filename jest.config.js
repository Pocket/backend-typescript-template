module.exports = {
  preset: 'ts-jest',
  testEnvironment: 'node',
  testMatch: ['**/?(*.)+(spec|integration).ts'],
  testPathIgnorePatterns: ['/dist/'],
  // TODO: remove the following if you don't have any localstack integration tests
  setupFiles: ['./jest.setup.js'],
};
