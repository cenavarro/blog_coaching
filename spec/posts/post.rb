require './lib/post/post'
require 'tester'

Tester.describe Post do
  Tester.context "initialize" do
    Tester.it "sets title argument" do
      title = "Blog without gems"
      post = Post.new(title: title)
      post.title.should_eq(title)
    end

    Tester.it "sets message argument" do
      message = "The first blog app without using gems"
      post = Post.new(message: message)
      post.message.should_eq(message)
    end

    Tester.it "sets author argument" do
      author = "Cesar Navarro"
      post = Post.new(author: author)
      post.author.should_eq(author)
    end
  end
end
