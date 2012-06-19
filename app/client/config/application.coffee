class App extends Tower.Application
  @configure ->
    @use Tower.Middleware.Agent
    @use Tower.Middleware.Location
    @use Tower.Middleware.Router
    
  bootstrap: (data) ->
    @User.load(data.users) if data.users
    @Post.load(data.posts) if data.posts

window.App = (new App).initialize()
