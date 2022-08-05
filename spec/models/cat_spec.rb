require 'rails_helper'

RSpec.describe Cat, type: :model do
  it "should validate name" do 
    cat = Cat.create(age: 10, status: "Married", looking_for: "Companionship", about_me: "If life were a box of chocolates, lets just say I've been through the whole box. At this point, I'm looking for adventure and new sparks.", hobbies: "Art of garnishing, Performing at the local community theatre, Calligraphy, Flying drones", image: "https://images.hdqwalls.com/download/cheetah-close-up-ml-1920x1080.jpg")

    expect(cat.errors[:name]).to_not be_empty
    end

    it "should validate age " do 
      cat = Cat.create(name: "Aleksis", status: "Married", looking_for: "Companionship", about_me: "If life were a box of chocolates, lets just say I've been through the whole box. At this point, I'm looking for adventure and new sparks.", hobbies: "Art of garnishing, Performing at the local community theatre, Calligraphy, Flying drones", image: "https://images.hdqwalls.com/download/cheetah-close-up-ml-1920x1080.jpg")

      expect(cat.errors[:age]).to_not be_empty
    end

    it "should validate status" do 
    cat = Cat.create(name: "Aleksis", age: 10, looking_for: "Companionship", about_me: "If life were a box of chocolates, lets just say I've been through the whole box. At this point, I'm looking for adventure and new sparks.", hobbies: "Art of garnishing, Performing at the local community theatre, Calligraphy, Flying drones", image: "https://images.hdqwalls.com/download/cheetah-close-up-ml-1920x1080.jpg")

    expect(cat.errors[:status]).to_not be_empty
    end

    it "should validate looking for" do 
    cat = Cat.create(name: "Aleksis", age: 10, status: "Married", about_me: "If life were a box of chocolates, lets just say I've been through the whole box. At this point, I'm looking for adventure and new sparks.", hobbies: "Art of garnishing, Performing at the local community theatre, Calligraphy, Flying drones", image: "https://images.hdqwalls.com/download/cheetah-close-up-ml-1920x1080.jpg")

    expect(cat.errors[:looking_for]).to_not be_empty
    end 

    it "should validate about me" do 
      cat = Cat.create(name: "Aleksis", age: 10, status: "Married", looking_for: "Companionship", hobbies: "Art of garnishing, Performing at the local community theatre, Calligraphy, Flying drones", image: "https://images.hdqwalls.com/download/cheetah-close-up-ml-1920x1080.jpg")
  
      expect(cat.errors[:about_me]).to_not be_empty
      end 

    it "should validate looking hobbies" do 
    cat = Cat.create(name: "Aleksis", age: 10, status: "Married", looking_for: "Companionship", about_me: "If life were a box of chocolates, lets just say I've been through the whole box. At this point, I'm looking for adventure and new sparks.", image: "https://images.hdqwalls.com/download/cheetah-close-up-ml-1920x1080.jpg")

    expect(cat.errors[:hobbies]).to_not be_empty
    end 

    it "should validate image" do 
      cat = Cat.create(name: "Aleksis", age: 10, status: "Married", looking_for: "Companionship", about_me: "If life were a box of chocolates, lets just say I've been through the whole box. At this point, I'm looking for adventure and new sparks.", hobbies: "Art of garnishing, Performing at the local community theatre, Calligraphy, Flying drones")
  
      expect(cat.errors[:image]).to_not be_empty
      
    end 

    it "is not valid if about me is less than 10 characters" do 

      cat = Cat.create(name: "Aleksis", age: 10, status: "Married", looking_for: "Companionship", hobbies: "Art of garnishing, Performing at the local community theatre, Calligraphy, Flying drones", image: "https://images.hdqwalls.com/download/cheetah-close-up-ml-1920x1080.jpg")
  
      expect(cat.errors[:about_me]).to_not be_empty
      
    end 
end