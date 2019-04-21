# Install required libraries for this system.
gem install bundler
gem install devise
gem install letter_opener_web
gem install jquery-rails
gem install bootstrap
gem install bootstrap-sass  
gem install carrierwave  


# Dowload the source from GitHub.
git clone https://github.com/yufujimoto/SurveyProjectManager2.git

# Change the directory to the server root.
cd SurveyProjectManager2/server

# Apply required sources.
bundle install

# Install the authentification function.
rails g devise:install
rails g devise user

# Add some entries for authentification.
rails g migration add_firstname_to_users firstname:string
rails g migration add_surname_to_users surname:string
rails g migration add_affiliation_to_users affiliation:string
rails g migration add_username_to_users username:string

# Migrate the db
rails db:migrate

# Constructing main db.
rails g scaffold Project uuid:string name:string title:string begining:date ending:date phase:integer introduction:text cause:text created_by:string
rails g migration addCoverToProject cover:string
rails db:migrate

rails g scaffold Consolidation uuid:string name:string geographic_annotation:string temporal_annotation:string description:text flickr_photosetid:string project:string
rails g scaffold Material uuid:string consolidation:string name:string material_number:string estimated_period_beginning:string estimated_period_peak:string estimated_period_ending:string latitude:float longitude:float altitude:float description:string
rails g scaffold Fileobject uuid:string consolidation:string material:string created_date:datetime modified_date:datetime file:string file_type:string alias_name:string status:string make_public:boolean is_locked:boolean source:string file_operation:string operating_application:string caption:string description:text flickr_photoid:string



# Migrate the db
rails db:migrate




# rails g scaffold Additional_attribute uuid:string ref_table:string ref_uuid:string key:string value:string datatype:string description:text
# rails g scaffold Material uuid:string con_id:string name:string material_number:string estimated_period_beginning:string estimated_period_peak:string estimated_period_ending:string latitude:float longitude:float altitude:float description:string

rails db:migrate





