vim.cmd([[command! -nargs=? Apropos call fzf#run(fzf#wrap({'source': 'man -k -s 1,2,3,4,8 '.shellescape(<q-args>).' | cut -d " " -f 1', 'sink': 'vert Man', 'options': ['--preview', 'MANPAGER=cat MANWIDTH='.(&columns/2-4).' man {}']}))]])
local search_man_under_cursor = function()
    local word = vim.fn.expand('<cword>')
	   vim.cmd.Apropos(word)
       vim.api.nvim_input(word)
end

vim.keymap.set({ "n", "v" }, "<leader>gn", function() search_man_under_cursor() end, opts)
