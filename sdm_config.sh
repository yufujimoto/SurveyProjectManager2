rails g devise:install
rails g devise user
rake db:migrate
rails g devise:views

rails g scaffold Project uuid:string name:string title:string begining:date ending:date phase:integer introduction:text cause:text created_by:string cover:string


# rails g scaffold Additional_attribute uuid:string ref_table:string ref_uuid:string key:string value:string datatype:string description:text
# rails g scaffold Consolidation uuid:string name:string geographic_annotation:string temporal_annotation:string description:text flickr_photosetid:string
#rails g scaffold Fileobject uuid:string con_id:string mat_id:string created_date:datetime modified_date:datetime file_name:string file_type:string alias_name:string status:string make_public:boolean is_locked:boolean source:string file_operation:string operating_application:string caption:string description:text flickr_photoid:string
# rails g scaffold Material uuid:string con_id:string name:string material_number:string estimated_period_beginning:string estimated_period_peak:string estimated_period_ending:string latitude:float longitude:float altitude:float description:string

#rails db:migrate
