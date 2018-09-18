{
  case_insensitive: true, // language is case-insensitive
  keywords: ':',
  contains: [
    {
      className: 'string',
      begin: '"', end: '"'
    },
    hljs.NUMBER_MODE,
    hljs.QUOTE_STRING_MODE,
    hljs.COMMENT(
      '/\\*', // begin
      '\\*/', // end
      {
        contains: [
          {
            className: 'doc', begin: '@\\w+'
          }
        ]
      }
    )
  ]
}
