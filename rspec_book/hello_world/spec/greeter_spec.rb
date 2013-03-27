describe "RSpec Greeter" do
  it "should say 'Hello Rspec!' when it receive the greet() method" do
    greeter = RSpecGreeter.new
    greeting = greeter.greet
    greeting.should == "Hello RSpec!"
  end
end