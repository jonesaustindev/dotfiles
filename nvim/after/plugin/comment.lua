require('Comment').setup()
require('nvim-treesitter.configs').setup {
  -- Install the parsers for the languages you want to comment in
  -- Here are the supported languages:
  ensure_installed = {
    'css', 'graphql', 'html', 'javascript',
    'lua', 'php', 'python', 'ruby', 'rust', 'scss', 'svelte', 'tsx', 'twig',
    'typescript', 'vim', 'vue',
  },

  context_commentstring = {
    enable = true,
  },
}
