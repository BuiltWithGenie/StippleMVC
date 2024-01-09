module DashboardsController
using GenieFramework
using StippleMVC.NumberAnalysis, StippleMVC.Greet
function analysis()
    #= model = NumberAnalysis.@init =#
    model = NumberAnalysis.factory()
    #= page(model, include("app/resources/dashboards/views/numberanalysis.jl")) |> html =#
    html(:dashboards, "numberanalysis.jl", model = NumberAnalysis.factory(), context = @__MODULE__)
end
function greet()
    model = Greet.factory()
    #= page(model, include("app/resources/dashboards/views/greet.jl")) |> html =#
    html(:dashboards, "greet.jl", model = Greet.factory(), context = @__MODULE__)
end
end
