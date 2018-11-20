require "rails_helper"

RSpec.describe EmailAddressesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/email_addresses").to route_to("email_addresses#index")
    end

    it "routes to #new" do
      expect(:get => "/email_addresses/new").to route_to("email_addresses#new")
    end

    it "routes to #show" do
      expect(:get => "/email_addresses/1").to route_to("email_addresses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/email_addresses/1/edit").to route_to("email_addresses#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/email_addresses").to route_to("email_addresses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/email_addresses/1").to route_to("email_addresses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/email_addresses/1").to route_to("email_addresses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/email_addresses/1").to route_to("email_addresses#destroy", :id => "1")
    end
  end
end
