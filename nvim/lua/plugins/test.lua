-- https://www.lazyvim.org/extras/test/core
return {
  { "fredrikaverpil/neotest-golang" },
  { "nvim-neotest/neotest-jest" },
  { "zidhuss/neotest-minitest" },
  { "rouge8/neotest-rust" },
  {
    "nvim-neotest/neotest",
    opts = {
      adapters = {
        "neotest-golang",
        "neotest-jest",
        "neotest-minitest",
        "neotest-rust",
      },
    },
  },
}
