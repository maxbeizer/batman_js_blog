class BatmanJsBlog.Comment extends Batman.Model
  @resourceName: 'comments'
  @storageKey: 'comments'

  @persist Batman.RailsStorage

  @belongsTo 'post'

  @urlNestsUnder 'post'

  # Use @encode to tell batman.js which properties Rails will send back with its JSON.
  # @encode 'name'
  @encode 'content', 'post_id'
  @encodeTimestamps()

