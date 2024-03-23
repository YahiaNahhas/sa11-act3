def extract_url(text)
  pattern = %r{(?i)\b(?:https?|ftp)://\S+(?:\b|$)}
  urls = text.scan(pattern)
  urls.each { |url| puts url }
end

sample_text = "Visit our site at http://www.farmersonly.org for more information. Check out our search page at https://farmersonly.com/search?q=ruby+regex. Don’t forget to ftp our resources at ftp://farmersonly.com/resources."
extract_url(sample_text)
