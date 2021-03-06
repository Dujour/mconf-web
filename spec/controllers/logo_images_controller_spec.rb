# This file is part of Mconf-Web, a web application that provides access
# to the Mconf webconferencing system. Copyright (C) 2010-2015 Mconf.
#
# This file is licensed under the Affero General Public License version
# 3 or later. See the LICENSE file.

require 'spec_helper'

describe LogoImagesController do

  describe "GET 'crop'" do
    it "returns http success" do
      get 'crop'
      response.should be_success
    end
  end

end
