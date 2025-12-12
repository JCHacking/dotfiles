return {
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
    },

    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",

        dependencies = {
            "onsails/lspkind.nvim",

            "hrsh7th/cmp-nvim-lsp",

            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
            "rafamadriz/friendly-snippets",

            "petertriho/cmp-git",

            "hrsh7th/cmp-buffer", 
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",

        },

        config = function()
            local cmp = require("cmp")
            local luasnip = require("luasnip")
            local lspkind = require("lspkind")

            luasnip.config.set_config({
                history = true,
                updateevents = "TextChanged,TextChangedI",
                enable_autosnippets = true,
            })

            require("luasnip.loaders.from_vscode").lazy_load()
            require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snippets" })

            cmp.setup({
                mapping = {
                    ["<C-p>"] = cmp.mapping.select_prev_item(),
                    ["<C-n>"] = cmp.mapping.select_next_item(),

                    ["<C-b>"] = cmp.mapping.scroll_docs(-5),
                    ["<C-f>"] = cmp.mapping.scroll_docs(5),

                    ["<C-e>"] = cmp.mapping.abort(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),
                    ["<C-y>"] = cmp.mapping.confirm({ select = true }),
                    ["<C-Space>"] = cmp.mapping.complete(),
      
                    ["<Tab>"] = cmp.mapping(
                        function(fallback)
                            if cmp.visible() then
                                cmp.select_next_item() 
                            elseif luasnip.expand_or_jumpable() then
                                luasnip.expand_or_jump() 
                            else
                                fallback() 
                            end
                        end, 
                        { "i", "s" }
                    ),

                    ["<S-Tab>"] = cmp.mapping(
                        function(fallback)
                            if cmp.visible() then
                                cmp.select_prev_item() 
                            elseif luasnip.jumpable(-1) then
                                luasnip.jump(-1) 
                            else
                                fallback()
                            end
                        end, 
                        { "i", "s" }
                    ),
                },

                snippet = {
                    expand = function(args)
                        luasnip.lsp_expand(args.body)
                    end
                },

                sources = {
                    { name = "nvim_lsp" },
                    { name = "luasnip" },
                    { name = "buffer" },
                    { name = "path" },
                },

                completion = {
                    completeopt = "menu,menuone,preview,noselect",
                },
                
                window = {
                    completion = {
                        border = "rounded",
                    },
                    documentation = {
                        border = "rounded",
                    },
                },

                formatting = {
                    format = lspkind.cmp_format({
                        with_codicons = true,
                        mode = "symbol_text",
                        maxwidth = 50,
                    }),
                },
            })

            cmp.setup.filetype("gitcommit", {
                sources = cmp.config.sources(
                    {
                        { name = "git"},
                    },
                    {
                        { name = "buffer" },
                    }
                ),
            })
            require("cmp_git").setup()

            cmp.setup.cmdline({"/", "?"}, {
                mapping = cmp.mapping.preset.cmdline(),
                sources = {
                    { name = "buffer" },
                },
            })
            cmp.setup.cmdline(":", {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources(
                    {
                        { name = "cmdline"},
                    },
                    {
                        { name = "buffer" },
                    }
                )
            })
        end,
    },
}

