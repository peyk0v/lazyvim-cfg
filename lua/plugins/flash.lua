return {
  "folke/flash.nvim",
  event = "VeryLazy",
  ---@type Flash.Config
  opts = {
    -- Cambia el color del cursor en el modo insertar
    guicursor = "i:ver100-iCursor",
    -- Define el grupo de resaltado iCursor con el color verde
    highlight = { iCursor = { guifg = "green" } },
    -- Cambia el color de las etiquetas de flash.nvim
    label_colors = { "red", "blue", "yellow" },
  },
}
