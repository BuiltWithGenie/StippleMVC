page(model,[
            slider(1:100, :N),
            btn("Calculate", @click(:calculate)),
            p("Average: {{avg}}")

           ]
    )
