class BatmanJsBlog.PostsController extends BatmanJsBlog.ApplicationController
  routingKey: 'posts'

  index: (params) ->
    @set('posts', BatmanJsBlog.Post.get('all'))

  show: (params) ->
    BatmanJsBlog.Post.find params.id, @errorHandler (post) =>
      @set('post', post)

  edit: (params) ->

  new: (params) ->

  create: (params) ->

  update: (params) ->

  destroy: (node, event, context) ->
    post = if context.get('post') then context.get('post') else @post
    post.destroy (err) =>
      if err
        throw err unless err instanceof Batman.ErrorsSet
      else
        @redirect '/posts'

