import * as Sentry from '@sentry/node';

import { CacheScope } from 'apollo-cache-control';
import config from './config';

export const resolvers = {
  Acme: {},
  Query: {
    getAcme: async (_source, { id }, { repositories }): Promise<{}> => {
      return {};
    },
  },
};
