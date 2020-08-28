require_relative '../calc'

# describe "Testing For Valid Input" do
#     context "Testing invalid input" do
#         it "Should raise an error if 2 parametes are not provided for add method" do
#             expect(Calbulator.add())
#         end
#     end
# end


describe "Testing valid input" do
    context "testing the add funtion" do
        it "Should return 19 for add(10, 9)" do
            expect(Calc.add(10, 9)).to eq 19
        end
        
        it "Should return 0 for add(0, 0)" do
            expect(Calc.add(0, 0)).to eq 0
        end

        it "Should return -16 for add(-15, -1)" do
            expect(Calc.add(-15, -1)).to eq -16
        end
    end

    context "testing the difference method" do
        it "should return 2 for difference(19, 18)" do
            expect(Calc.difference(19, 18)).to eq 1
        end

        it "should return -8 for difference(0, 8)" do
            expect(Calc.difference(0, 8)).to eq -8
        end
    end

    context "testing the mult method" do
        it "should return 24 for mult(4, 6)" do
            expect(Calc.mult(4, 6)).to eq 24
        end

        it "should return 0 for mult(0, 892)" do
            expect(Calc.mult(0, 892)).to eq 0
        end
    end

    context "testing the divide method" do
        it "should return 1 for divide(51, 51)" do
            expect(Calc.divide(51, 51)).to eq 1
        end

        it "should return infinity for divide(0, 10)" do
            expect(Calc.divide(0,10)).to eq 0
        end

        # it "should raise ZeroDivisionError for divide(10, 0)" do
        #     expect(Calc.divide(10, 0)).to raise ZeroDivisionError
        # end
    end
end