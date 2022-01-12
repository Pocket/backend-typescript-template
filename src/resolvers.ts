export const resolvers = {
  Acme: {},
  Query: {
    getAcme: async (
      _source,
      { id },
      { repositories }
    ): Promise<{ acme: string }> => {
      return {
        acme: 'sign',
      };
    },
  },
};
