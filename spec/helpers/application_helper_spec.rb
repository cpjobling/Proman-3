require 'spec_helper'

describe ApplicationHelper do

  #Delete this example and add some real ones or delete this file
  it "should be included in the object returned by #helper" do
    included_modules = (class << helper; self; end).send :included_modules
    included_modules.should include(ApplicationHelper)
  end
  
  describe "quotation_generator" do
    it "should generate a fully cited quotation" do
      quote = helper.quotation_generator(
            'You and I ought not to die before we have explained ourselves to each other.',
            :author => "John Adams", :born => "1735", :died => "1826")
      quote.should == 
          "&ldquo;You and I ought not to die before we have explained ourselves to each other.&rdquo; &ndash; John Adams (1735&mdash;1826)"
    end
    
    it "should deal with anonymous quotation" do
       quote = helper.quotation_generator('This is an anonymous quotation.')
        quote.should == 
            "&ldquo;This is an anonymous quotation.&rdquo; &ndash; Anonymous"
    end
    
    it "should deal with unknown date of birth" do
       quote = helper.quotation_generator(
         'We don\'t know when this guy was born.',
          :author => "A. N. Author", :died => 1066)
        quote.should == 
            "&ldquo;We don\'t know when this guy was born.&rdquo; &ndash; A. N. Author (?&mdash;1066)"
    end
    
    it "should deal with unknown date of death" do
      quote = helper.quotation_generator(
        'We don\'t know when this guy died.',
        :author => "A. N. Author", :born => 1066)
       quote.should == 
           "&ldquo;We don\'t know when this guy died.&rdquo; &ndash; A. N. Author (1066&mdash;?)"
    end
    
    it "should deal with unknown dates" do
      quote = helper.quotation_generator(
        'This is an undated qotation.',
        :author => "A. N. Author")
       quote.should == 
           "&ldquo;This is an undated qotation.&rdquo; &ndash; A. N. Author"
    end
  end

  describe "proman" do
    it "should generate the Proman^beta logo" do
      logo = helper.proman
      logo.should == "<em>Proman<sup>&beta;</sup></em>"
    end
  end
  
  
end
