require_relative '../models/entry'

RSpec.describe Entry do
    
    describe "attributes" do
        let(:entry) { Entry.new('John Howard', '817-555-5555', 'john.howard@test.com') }
        
        it "responds to name" do
            expect(entry).to respond_to(:name)
        end
        
        it "reports its name" do
            expect(entry.name).to eq('John Howard')
        end
        
        it "responds to phone number" do
            expect(entry).to respond_to(:phone_number)
        end
        
        it "reports its phone_number" do
            expect(entry.phone_number).to eq('817-555-5555')
        end
        
        it "responds to email" do
            expect(entry).to respond_to(:email)
        end
        
        it "reports its email" do
            expect(entry.email).to eq('john.howard@test.com')
        end
    end
    
    describe "#to_s" do
        it "prints an entry as a string" do
            entry = Entry.new('John Howard', '817-555-5555', 'john.howard@test.com')
            expected_string = "Name: John Howard\nPhone Number: 817-555-5555\nEmail: john.howard@test.com"
            expect(entry.to_s).to eq(expected_string)
        end
    end
end