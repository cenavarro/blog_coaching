class Post
  attr_reader :title, :message, :author, :created_at

  def initialize(args={})
    @title = args[:title]
    @message = args[:message]
    @author = args[:author]
  end
end
