const name = 'Acme';
let environment;
let domain;
let graphqlVariant;
let cacheNodes;
let cacheSize;

if (process.env.NODE_ENV === 'development') {
  environment = 'Dev';
  domain = 'acme.getpocket.dev';
  graphqlVariant = 'development';
  cacheNodes = 2;
  cacheSize = 'cache.t2.micro';
} else {
  environment = 'Prod';
  domain = 'acme.readitlater.com';
  graphqlVariant = 'current';
  //Arbitrary size and count for cache. No logic was used in deciding this.
  cacheNodes = 2;
  cacheSize = 'cache.t3.medium';
}

export const config = {
  name,
  prefix: `${name}-${environment}`,
  circleCIPrefix: `/${name}/CircleCI/${environment}`,
  shortName: 'ACME',
  environment,
  domain,
  cacheNodes,
  cacheSize,
  tags: {
    service: name,
    environment,
  },
};
