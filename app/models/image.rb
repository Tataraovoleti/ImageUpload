class Image < ActiveRecord::Base
      validates_presence_of :file1
      validates_format_of :file1, :with => %r{\.(png|jpg|jpeg|gif)$}i, :message => "whatever"
end
