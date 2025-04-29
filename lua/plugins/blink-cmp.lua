return {
  {
    'saghen/blink.cmp',
    dependencies = {
      {
        'l3mon4d3/luasnip',
        version = 'v2.*',
        dependencies = {
          "rafamadriz/friendly-snippets",
        },
        config = function()
          require("luasnip.loaders.from_vscode").lazy_load()
          require("luasnip.loaders.from_lua").lazy_load()
        end,
      },
      'neovim/nvim-lspconfig',
      'rafamadriz/friendly-snippets',
    },


    version = '*',

    ---@module 'blink.cmp'
    ---@type blink.cmp.config
    opts = {
      keymap = {
        preset      = 'default',
        ['<tab>']   = { 'select_next', 'fallback' },
        ['<s-tab>'] = { 'select_prev', 'fallback' },
        ['<cr>']    = { 'accept', 'fallback' },
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
      -- (default) only show the documentation popup when manually triggered
      completion = {
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 0,
        },


        ghost_text = { enabled = true },
        menu = {
          draw = {
            -- aligns the keyword you've typed to a component in the menu
            align_to = 'label', -- or 'none' to disable, or 'cursor' to align to the cursor
            -- left and right padding, optionally { left, right } for different padding on each side
            padding = 1,
            -- gap between columns
            gap = 1,
            -- use treesitter to highlight the label text for the given list of sources
            treesitter = { 'lsp' },

            -- components to render, grouped by column
            columns = { { 'kind_icon' }, { 'label', 'label_description', gap = 1 } },

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
                    { 0, #ctx.label, group = ctx.deprecated and 'blinkcmplabeldeprecated' or 'blinkcmplabel' },
                  }
                  if ctx.label_detail then
                    table.insert(highlights,
                      { #ctx.label, #ctx.label + #ctx.label_detail, group = 'blinkcmplabeldetail' })
                  end

                  -- characters matched on the label by the fuzzy matcher
                  for _, idx in ipairs(ctx.label_matched_indices) do
                    table.insert(highlights, { idx, idx + 1, group = 'blinkcmplabelmatch' })
                  end

                  return highlights
                end,
              },

              label_description = {
                width = { max = 30 },
                text = function(ctx) return ctx.label_description end,
                highlight = 'blinkcmplabeldescription',
              },

              source_name = {
                width = { max = 30 },
                text = function(ctx) return ctx.source_name end,
                highlight = 'blinkcmpsource',
              },

              source_id = {
                width = { max = 30 },
                text = function(ctx) return ctx.source_id end,
                highlight = 'blinkcmpsource',
              },
            },
          },
          enabled = true,
          min_width = 15,
          max_height = 10,
          border = nil, -- defaults to `vim.o.winborder` on nvim 0.11+
          winblend = 0,
          winhighlight =
          'normal:blinkcmpmenu,floatborder:blinkcmpmenuborder,cursorline:blinkcmpmenuselection,search:none',
          -- keep the cursor x lines away from the top/bottom of the window
          scrolloff = 3,
          -- note that the gutter will be disabled when border ~= 'none'
          scrollbar = false,
          -- which directions to show the window,
          -- falling back to the next direction when there's not enough space
          direction_priority = { 'n', 's' },

          auto_show = true,

          -- screen coordinates of the command line
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

      -- default list of enabled providers defined so that you can extend it
      -- elsewhere in your config, without redefining it, due to `opts_extend`
      sources = {
        default = {
          'lsp',
          'path',
          'snippets',
          'buffer',
        },
        providers = {
          lsp = {
            name = 'lsp',
            module = "blink.cmp.sources.lsp",
            enabled = true,
            should_show_items = true,
          }

        },

      },

      -- experimental signature help support
      signature = {
        enabled = true,
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
          border = nil, -- defaults to `vim.o.winborder` on nvim 0.11+ or 'padded' when not defined/<=0.10b
          winblend = 0,
          winhighlight = 'normal:blinkcmpsignaturehelp,floatborder:blinkcmpsignaturehelpborder',
          scrollbar = false, -- note that the gutter will be disabled when border ~= 'none'
          -- which directions to show the window,
          -- falling back to the next direction when there's not enough space,
          -- or another window is in the way
          direction_priority = { 'n', 's' },
          -- disable if you run into performance issues
          treesitter_highlighting = true,
          show_documentation = true,
        },
      },

      snippets = { preset = 'luasnip' },

      fuzzy = { implementation = "prefer_rust_with_warning" }
    },
    opts_extend = { "sources.default" }
  }
}
