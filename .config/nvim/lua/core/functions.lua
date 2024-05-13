function edit_nvim()
    vim.cmd(":e $MYVIMRC")
    vim.cmd(":cd ~/.config/nvim")
    vim.cmd(":NvimTreeOpen")
end

function randomquote()
    local quote = {
        "Bing Chilling",
        "The Stink Boys",
        "Whopper Whopper Whopper Whopper Junior Double Triple Whopper",
        "White Monster",
        "The system plays us everday...",
        "sudo systemctl restart justinlime",
        "sudo systemctl start justinlime",
        "sudo systemctl stop justinlime",
        "sudo systemctl enable justinlime",
        "sudo systemctl disable justinlime",
    }
    return quote[math.random(1,#quote)] 
end

function randomsplash()
    local splash = {
        {
        [[sharpicx]],
        },
    }
    return splash[math.random(1,#splash)] 
end
