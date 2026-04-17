local startify = require("alpha.themes.startify")

startify.file_icons.provider = "devicons"
startify.section.header.val = {
  "     ~+",
  "",
  "              *       +",
  "        '                  |",
  "    ()    .-.,=\"``\"=.    - o -",
  "          '=/ _       \\     |",
  "       *   |  '=._    |",
  "            \\     `=./`,        '",
  "         .   '=.__.=' `='      *",
  "+                         +",
  "     O      *        '       .",
}
-- startify.section.header.opts = {
--   position = "center",
-- }

require("alpha").setup(
    startify.config
)
