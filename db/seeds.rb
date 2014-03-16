20.times do |i|
  post = Post.create title: "Post #{i}", content: "some awesome content #{i}"
  5.times { |j| post.comments.create(content: "Comment number #{j}") }
end
