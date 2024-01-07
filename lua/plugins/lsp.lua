return {
  {
    'neovim/nvim-lspconfig',
    lazy = false,
    priority = 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,
    -- event = 'VeryLazy',
  },
  {
    'williamboman/mason.nvim',
    lazy = false,
    priority = 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,
    -- event = 'VeryLazy',
    config = function()
      require('mason').setup()
    end
  },
  {
    'williamboman/mason-lspconfig.nvim',
    lazy = false,
    priority = 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,
    -- event = 'VeryLazy',
    config = function()
      local servers = {
        clangd = {},
        -- gopls = {},
        -- pyright = {},
        rust_analyzer = {
          settings = {
            ['rust-analyzer'] = {
              cargo = {
                allFeatures = true,
              },
              clippy = {
                allFeatures = true,
              },
              -- checkOnSave = {
              --   command = 'clippy',
              -- },
            },
          },
        },
        -- html = { filetypes = { 'html', 'twig', 'hbs'} },

        lua_ls = {
          Lua = {
            workspace = { checkThirdParty = false },
            telemetry = { enable = false },
            -- NOTE: toggle below to ignore Lua_LS's noisy `missing-fields` warnings
            diagnostics = { disable = { 'missing-fields' }, globals = { 'vim' } },
          },
        },

        pyright = {},
      }

      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

      local mason_lspconfig = require 'mason-lspconfig'

      mason_lspconfig.setup {
        ensure_installed = vim.tbl_keys(servers),
      }

      mason_lspconfig.setup_handlers {
        function(server_name)
          require('lspconfig')[server_name].setup {
            capabilities = capabilities,
            on_attach = on_attach,
            settings = servers[server_name],
            filetypes = (servers[server_name] or {}).filetypes,
          }
        end,
      }
    end
  },
  {
    'hrsh7th/nvim-cmp',
    lazy = false,
    priority = 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,
    -- event = 'VeryLazy',
    config = function()
      local cmp = require 'cmp'
      local luasnip = require 'luasnip'
      require('luasnip.loaders.from_vscode').lazy_load()
      luasnip.config.setup {}

      cmp.setup {
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        completion = {
          completeopt = 'menu,menuone,noinsert',
        },
        mapping = cmp.mapping.preset.insert {
          ['<C-n>'] = cmp.mapping.select_next_item(),
          ['<C-p>'] = cmp.mapping.select_prev_item(),
          ['<C-d>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete {},
          ['<Tab>'] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
          },
          ['<C-Space>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_locally_jumpable() then
              luasnip.expand_or_jump()
            else
              fallback()
            end
          end, { 'i', 's' }),
          ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.locally_jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { 'i', 's' }),
        },
        sources = {
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
          { name = 'buffer' },
          { name = 'path' },
        },
        formatting = { format = require('lspkind').cmp_format({ mode = 'symbol' }) },
      }
    end
  },
  {
    'L3MON4D3/LuaSnip',
    lazy = false,
    priority = 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,
    -- event = 'VeryLazy',
  },
  {
    'saadparwaiz1/cmp_luasnip',
    lazy = false,
    priority = 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,
    -- event = 'VeryLazy',
  },
  {
    'hrsh7th/cmp-nvim-lsp',
    lazy = false,
    priority = 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,
    -- event = 'VeryLazy',
  },
  {
    'hrsh7th/cmp-path',
    lazy = false,
    priority = 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,
    -- event = 'VeryLazy',
  },
  -- {
  --     'rafamadriz/friendly-snippets',
  --     lazy = false,
  --     -- event = 'VeryLazy',
  -- },
  {
    'onsails/lspkind.nvim',
    lazy = false,
    priority = 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,
    -- event = 'VeryLazy',
  },
}

