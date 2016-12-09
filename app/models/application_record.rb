class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

 # Upload files
 #mount_uploader :last_upload, PlayersUploader #crashes sign_out debug

end
