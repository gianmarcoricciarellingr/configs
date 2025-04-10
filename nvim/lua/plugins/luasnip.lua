return {
    "L3MON4D3/LuaSnip",
    config = function()
        local ls = require("luasnip")
        local s = ls.snippet
        local i = ls.insert_node
        local rep = require("luasnip.extras").rep
        local fmt = require("luasnip.extras.fmt").fmt

        ls.add_snippets("typescriptreact", {
            s(
                { trig = "rfc-no-import", dscr = "React functional component without importing React" },
                fmt(
                    [[
                export default function {1}() {{
                    return (
                        <div>{2}</div>
                    )
                }}
                ]],
                    { i(1, "ComponentName"), rep(1) }
                )
            ),
            s(
                { trig = "custom-hook", dscr = "React custom hook" },
                fmt(
                    [[
                export default function use{1}() {{
                    {2}
                    return {{}}
                }}
            ]],
                    { i(1, "CustomHookName"), i(0) }
                )
            ),
            s({ trig = "cl", dscr = "console.log a value" }, fmt([[console.log({1})]], { i(1, "value") })),
        })

        ls.add_snippets("markdown", {
            s(
                { trig = "dr", dscr = "Disabled a set of rules for the entire file" },
                fmt(
                    [[
            <!-- markdownlint-disable {1} -->
            ]],
                    { i(0) }
                )
            ),
        })
    end,
}
