require 'spec_helper'

describe User do

  it { should have_db_column(:email).of_type(:string).with_options({default: "", null: false}) }
  it { should have_db_column(:phone).of_type(:string) }
  it { should have_db_column(:encrypted_password).of_type(:string).with_options({default: "", null: false}) }
  it { should have_db_column(:reset_password_token).of_type(:string) }
  it { should have_db_column(:reset_password_sent_at).of_type(:datetime) }
  it { should have_db_column(:sign_in_count).of_type(:integer).with_options({default: 0,  null: false}) }
  it { should have_db_column(:current_sign_in_at).of_type(:datetime) }
  it { should have_db_column(:current_sign_in_ip).of_type(:string) }
  it { should have_db_column(:last_sign_in_ip).of_type(:string) }
  it { should have_db_column(:created_at).of_type(:datetime) }
  it { should have_db_column(:updated_at).of_type(:datetime) }

end