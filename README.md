## Example of a reactive Stipple app with a MVC architecture

- Create a new app and a dashboard controller

```julia
julia>Genie.Generator.newapp("StippleMVC")
julia>Genie.Generator.newcontroller("Dashboard")

```
- Add new dashboards/pages in the `app/resources/dashboards` folder where
    - The logic (what would be the app.jl file) goes into `app/resources/dashboards`
    - The view (what would be the ui.jl file) goes into `app/resources/dashboards/views`

- Add a `factory` function to the logic files to generate the page's `ReactiveModel`

- In `DashboardController.jl` add a function for each page:

```julia
  function greet()
    model = Greet.factory()
    page(model, include("app/resources/dashboards/views/greet.jl")) |> html
  end
```
- Add a route in routes.jl:

```julia
route("/", StippleMVC.DashboardsController.greet)
```
