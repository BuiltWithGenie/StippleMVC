module Greet
using GenieFramework

@app begin
    @in name = "Genie"
end

function factory()
    @init
end
end
