module NumberAnalysis
using GenieFramework, Statistics

@app begin
    @out avg = 0.0
    @in N = 0
    @in calculate = false
    @onbutton calculate begin
        @show "clicked"
        avg = mean(randn(N))
    end
end

function factory()
    @init
end
end
