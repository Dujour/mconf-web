# This file is part of Mconf-Web, a web application that provides access
# to the Mconf webconferencing system. Copyright (C) 2010-2012 Mconf
#
# This file is licensed under the Affero General Public License version
# 3 or later. See the LICENSE file.

require "spec_helper"

describe ProfilesController do
  include Shoulda::Matchers::ActionController

  describe "routing" do
    it { should route(:get, "/users/u1/profile").to(:action => :show, :user_id => "u1") }

    # make sure some routes don't exist
    it { { :get => '/users/u1/profile/new' }.should_not be_routable }
    it { { :post => '/users/u1/profile' }.should_not be_routable }
    it { { :get => '/spaces/s1/users/u1/profile/new' }.should_not be_routable }
    it { { :post => '/spaces/s1/users/u1/profile' }.should_not be_routable }

    # TODO: these routes are added by station but are not necessary
    it {
      pending("useless route added by station")
      { :get => '/profiles/new' }.should_not be_routable }
    it {
      pending("useless route added by station")
      { :post => '/profiles' }.should_not be_routable }
  end
end
