require 'md5'

module Jekyll
  class Site
    def gravatar_image
      return nil unless self.config['gravatar_email']

      hash = MD5::md5(self.config['gravatar_email'].downcase)
      return "http://www.gravatar.com/avatar/#{hash}"
    end
  end
end
