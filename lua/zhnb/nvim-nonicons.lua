return {
    'yamatsum/nvim-nonicons',
    dependencies = {'kyazdani42/nvim-web-devicons'},
    opts = {
        defaults = {
            prompt_prefix = "  " .. icons.get("telescope") .. "  ",
            selection_caret = " ❯ ",
            entry_prefix = "   ",
        },
    }
}
