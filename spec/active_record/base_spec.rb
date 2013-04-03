require "spec_helper"

describe ActiveRecord::Base do
  it "opens a connection" do
    connection = ActiveRecord::Base.redshift_connection(TEST_CONNECTION_HASH)
    connection.active?.should be_true
  end
end
