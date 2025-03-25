return {
  {
    'neovim/nvim-lspconfig',
    dependencies = { 'saghen/blink.cmp' },

    -- example using `opts` for defining servers
    opts = {
      servers = {
        lua_ls = {}
      }
    },
    config = function(_, opts)
      local lspconfig = require('lspconfig')
      for server, config in pairs(opts.servers) do
        config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
        lspconfig[server].setup(config)
      end
    end
  },
  {
    'saghen/blink.cmp',
    dependencies = {
      { 'L3MON4D3/LuaSnip', version = 'v2.*' },
      'neovim/nvim-lspconfig',
      "jdrupal-dev/css-vars.nvim",
      'rafamadriz/friendly-snippets',
      "moyiz/blink-emoji.nvim",
    },


    -- use a release tag to download pre-built binaries
    version = '*',
    -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
    -- build = 'cargo build --release',
    -- If you use nix, you can build from source using latest nightly rust with:
    -- build = 'nix run .#build-plugin',

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      -- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
      -- 'super-tab' for mappings similar to vscode (tab to accept)
      -- 'enter' for enter to accept
      -- 'none' for no mappings
      --
      -- All presets have the following mappings:
      -- C-space: Open menu or open docs if already open
      -- C-n/C-p or Up/Down: Select next/previous item
      -- C-e: Hide menu
      -- C-k: Toggle signature help (if signature.enabled = true)
      --
      -- See :h blink-cmp-config-keymap for defining your own keymap
      keymap = {
        preset      = 'default',
        ['<Tab>']   = { 'select_next', 'fallback' },
        ['<S-Tab>'] = { 'select_prev', 'fallback' },
        ['<CR>']    = { 'accept', 'fallback' },


      },

      appearance = {
        -- highlight_matching = true,
        nerd_font_variant = 'mono'
      },

      cmdline = {
        enabled = true,
        completion = {
          menu = {
            auto_show = true
          }
        }
      },
      -- (Default) Only show the documentation popup when manually triggered
      completion = {
        documentation = {
          auto_show = false,
          auto_show_delay_ms = 500,
        },

        accept = { auto_brackets = { enabled = true } },
        ghost_text = { enabled = true },
        menu = {
          draw = {
            -- Aligns the keyword you've typed to a component in the menu
            align_to = 'label', -- or 'none' to disable, or 'cursor' to align to the cursor
            -- Left and right padding, optionally { left, right } for different padding on each side
            padding = 1,
            -- Gap between columns
            gap = 1,
            -- Use treesitter to highlight the label text for the given list of sources
            treesitter = { 'lsp' },

            -- Components to render, grouped by column
            columns = { { 'kind_icon' }, { 'label', 'label_description', gap = 1 } },

            -- Definitions for possible components to render. Each defines:
            --   ellipsis: whether to add an ellipsis when truncating the text
            --   width: control the min, max and fill behavior of the component
            --   text function: will be called for each item
            --   highlight function: will be called only when the line appears on screen
            components = {
              kind_icon = {
                ellipsis = false,
                text = function(ctx) return ctx.kind_icon .. ctx.icon_gap end,
                highlight = function(ctx) return ctx.kind_hl end,
              },

              kind = {
                ellipsis = false,
                width = { fill = true },
                text = function(ctx) return ctx.kind end,
                highlight = function(ctx) return ctx.kind_hl end,
              },

              label = {
                width = { fill = true, max = 60 },
                text = function(ctx) return ctx.label .. ctx.label_detail end,
                highlight = function(ctx)
                  -- label and label details
                  local highlights = {
                    { 0, #ctx.label, group = ctx.deprecated and 'BlinkCmpLabelDeprecated' or 'BlinkCmpLabel' },
                  }
                  if ctx.label_detail then
                    table.insert(highlights,
                      { #ctx.label, #ctx.label + #ctx.label_detail, group = 'BlinkCmpLabelDetail' })
                  end

                  -- characters matched on the label by the fuzzy matcher
                  for _, idx in ipairs(ctx.label_matched_indices) do
                    table.insert(highlights, { idx, idx + 1, group = 'BlinkCmpLabelMatch' })
                  end

                  return highlights
                end,
              },

              label_description = {
                width = { max = 30 },
                text = function(ctx) return ctx.label_description end,
                highlight = 'BlinkCmpLabelDescription',
              },

              source_name = {
                width = { max = 30 },
                text = function(ctx) return ctx.source_name end,
                highlight = 'BlinkCmpSource',
              },

              source_id = {
                width = { max = 30 },
                text = function(ctx) return ctx.source_id end,
                highlight = 'BlinkCmpSource',
              },
            },
          },
          enabled = true,
          min_width = 15,
          max_height = 10,
          border = "rounded", -- Defaults to `vim.o.winborder` on nvim 0.11+
          winblend = 0,
          winhighlight =
          'Normal:BlinkCmpMenu,FloatBorder:BlinkCmpMenuBorder,CursorLine:BlinkCmpMenuSelection,Search:None',
          -- Keep the cursor X lines away from the top/bottom of the window
          scrolloff = 2,
          -- Note that the gutter will be disabled when border ~= 'none'
          scrollbar = false,
          -- Which directions to show the window,
          -- falling back to the next direction when there's not enough space
          direction_priority = { 's', 'n' },

          auto_show = true,

          -- Screen coordinates of the command line
          cmdline_position = function()
            if vim.g.ui_cmdline_pos ~= nil then
              local pos = vim.g.ui_cmdline_pos -- (1, 0)-indexed
              return { pos[1] - 1, pos[2] }
            end
            local height = (vim.o.cmdheight == 0) and 1 or vim.o.cmdheight
            return { vim.o.lines - height, 0 }
          end,
        }
      },

      -- Default list of enabled providers defined so that you can extend it
      -- elsewhere in your config, without redefining it, due to `opts_extend`
      sources = {
        default = {
          'lsp',
          'path',
          'snippets',
          'buffer',
          'css_vars',
          "emoji",
        },
        providers = {

          css_vars = {
            name = "css-vars",
            module = "css-vars.blink",
            opts = {
              -- WARNING: The search is not optimized to look for variables in JS files.
              -- If you change the search_extensions you might get false positives and weird completion results.
              search_extensions = { ".js", ".ts", ".jsx", ".tsx" }
            }
          },

          emoji = {
            module = "blink-emoji",
            name = "Emoji",
            score_offset = 15,        -- Tune by preference
            opts = { insert = true }, -- Insert emoji (default) or complete its name
          },
        },
      },

      -- Experimental signature help support
      signature = {
        enabled = false,
        trigger = {
          enabled = true,
          show_on_keyword = false,
          blocked_trigger_characters = {},
          blocked_retrigger_characters = {},
          show_on_trigger_character = true,
          show_on_insert = false,
          show_on_insert_on_trigger_character = true,
        },
        window = {
          min_width = 1,
          max_width = 100,
          max_height = 10,
          border = "rounded", -- Defaults to `vim.o.winborder` on nvim 0.11+ or 'padded' when not defined/<=0.10
          winblend = 0,
          winhighlight = 'Normal:BlinkCmpSignatureHelp,FloatBorder:BlinkCmpSignatureHelpBorder',
          scrollbar = false, -- Note that the gutter will be disabled when border ~= 'none'
          -- Which directions to show the window,
          -- falling back to the next direction when there's not enough space,
          -- or another window is in the way
          direction_priority = { 'n', 's' },
          -- Disable if you run into performance issues
          treesitter_highlighting = true,
          show_documentation = true,
        },
      },
      snippets = { preset = 'luasnip' },

      -- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
      -- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
      -- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
      --
      -- See the fuzzy documentation for more information
      fuzzy = { implementation = "prefer_rust_with_warning" }
    },
    opts_extend = { "sources.default" }
  } }
