class Bookmark

  def initialize(title, url)
    @title =title
    @url = url
    @last_visited = Time.now
  end

  attr_accessor :title, :url
  attr_reader :last_visited

  def visit!()
    # Added 5 second sleep to show time difference.
    sleep(5)
    @last_visited = Time.now
  end

end

bm = Bookmark.new('apple', 'www.apple.com')
puts bm.title
puts bm.url
puts bm.last_visited
bm.visit!
puts bm.last_visited

