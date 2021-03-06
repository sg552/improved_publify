# -*- encoding : utf-8 -*-
require 'spec_helper'

describe TextFilterPlugin::Macro do

  describe "#self.attributes_parse" do
    it 'should parse lang="ruby" to {"lang" => "ruby"}' do
      TextFilterPlugin::Macro.attributes_parse('<publify:code lang="ruby">').should == {'lang' => 'ruby'}
    end

    it "should parse lang='ruby' to {'lang' => 'ruby'}" do
      TextFilterPlugin::Macro.attributes_parse("<publify:code lang='ruby'>").should == {'lang' => 'ruby'}
    end
  end

end
