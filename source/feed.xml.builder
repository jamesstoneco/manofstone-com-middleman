xml.instruct!
xml.feed "xmlns" => "http://www.w3.org/2005/Atom" do
  site_url = "http://www.manofstone.com"
  xml.title "James Stone: Author, Speaker, Developer and Media Artist"
  xml.subtitle "He taught game and creative coding at Penn State and served as faculty for Eyebeam."
  xml.id URI.join(site_url, blog.options.prefix.to_s)
  xml.link "href" => URI.join(site_url, blog.options.prefix.to_s)
  xml.link "href" => URI.join(site_url, current_page.path), "rel" => "self"
  xml.updated blog.articles.first.date.to_time.iso8601
  xml.author { xml.name "James Stone" }

  blog.articles[0..9].each do |article|
    xml.entry do
      xml.title article.title
      xml.link "rel" => "alternate", "href" => URI.join(site_url, article.url)
      xml.id URI.join(site_url, article.url)
      xml.published article.date.to_time.iso8601
      xml.updated File.mtime(article.source_file).iso8601
      # article.tags.each do |t|
      #   xml.category t
      # end
      xml.author { xml.name "James Stone" }
      # TODO: still an issue with how images included inline are displayed, maybe need to find call that mm uses to render the html rather than the html directly
      # handle featureded image if found
      unless article.data.featured_image.nil?
        xml.summary "#{tag(:img, :src => "http://www.manofstone.com#{asset_url(article.data.featured_image)}")} #{article.summary.sub( %r{href="/blog/}, 'href="http://www.manofstone.com/blog/' )}", "type" => "html"
        xml.content "#{tag(:img, :src => "http://www.manofstone.com#{asset_url(article.data.featured_image)}")} #{article.body.sub( %r{href="/blog/}, 'href="http://www.manofstone.com/blog/' )}", "type" => "html"
      else
        xml.summary article.summary.sub( %r{href="/blog/}, 'href="http://www.manofstone.com/blog/' ), "type" => "html"
        xml.content article.body.sub( %r{href="/blog/}, 'href="http://www.manofstone.com/blog/' ), "type" => "html"
      end
    end
  end
end
