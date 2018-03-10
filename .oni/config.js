// For more information on customizing Oni,
// check out our wiki page:
// https://github.com/onivim/oni/wiki/Configuration

const activate = oni => {
    console.log("config activated")

    // Input
    //
    // Add input bindings here:
    //
    oni.input.bind("<c-enter>", () => console.log("Control+Enter was pressed"))

    //
    // Or remove the default bindings here by uncommenting the below line:
    //
    // oni.input.unbind("<c-p>")
}

const deactivate = () => {
    console.log("config deactivated")
}

module.exports = {
    activate,
    deactivate,
    //add custom config here, such as

    "ui.colorscheme": "NeoSolarized",

    //"oni.useDefaultConfig": true,
    "oni.bookmarks": ["/Users/Em/.oni/bookmarks/"],
    "oni.loadInitVim": true,
    "editor.fontSize": "11px",
    //"editor.fontFamily": "FiraCode-Regular"
    "editor.fontLigatures": true

    // UI customizations
    "ui.animations.enabled": true,
    "ui.fontSmoothing": "auto",
}

