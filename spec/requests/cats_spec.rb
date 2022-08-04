require 'rails_helper'

RSpec.describe "Cats", type: :request do

  describe "GET /index" do
    it "gets a list of cats" do 
      Cat.create( 
        name: "Aleksis",
        age: 10,
        status: "Married", 
        looking_for: "Companionship", 
        about_me: "If life were a box of chocolates, lets just say I've been through the whole box. At this point, I'm looking for adventure and new sparks.", 
        hobbies: "Art of garnishing, Performing at the local community theatre, Calligraphy, Flying drones", 
        image: "https://images.hdqwalls.com/download/cheetah-close-up-ml-1920x1080.jpg"
      )

      get "/cats"
      cat = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(cat.length).to eq 1
    end
  end

  describe "POST /create" do
    it "creates a cat" do 
      cat_params = {
        cat: {
          name: "Aleksis",
          age: 10,
          status: "Married", 
          looking_for: "Companionship", 
          about_me: "If life were a box of chocolates, lets just say I've been through the whole box. At this point, I'm looking for adventure and new sparks.", 
          hobbies: "Art of garnishing, Performing at the local community theatre, Calligraphy, Flying drones", 
          image: "https://images.hdqwalls.com/download/cheetah-close-up-ml-1920x1080.jpg"
        }
      }

      post "/cats", params: cat_params
      expect(response).to have_http_status(200)
      cat = Cat.first 
      expect(cat.name).to eq "Aleksis"
      expect(cat.age).to eq 10
      expect(cat.status).to eq "Married"
      expect(cat.looking_for).to eq "Companionship"
      expect(cat.about_me).to eq "If life were a box of chocolates, lets just say I've been through the whole box. At this point, I'm looking for adventure and new sparks."
      expect(cat.hobbies).to eq "Art of garnishing, Performing at the local community theatre, Calligraphy, Flying drones"
      expect(cat.image).to eq "https://images.hdqwalls.com/download/cheetah-close-up-ml-1920x1080.jpg"
      
    end 
  end

  describe "PATCH /update" do
    it "updates a cat profile" do
      cat_params = {
        cat: {
          name: "Aleksis",
          age: 10,
          status: "Married", 
          looking_for: "Companionship", 
          about_me: "If life were a box of chocolates, lets just say I've been through the whole box. At this point, I'm looking for adventure and new sparks.", 
          hobbies: "Art of garnishing, Performing at the local community theatre, Calligraphy, Flying drones", 
          image: "https://images.hdqwalls.com/download/cheetah-close-up-ml-1920x1080.jpg"
        }
      }

      post "/cats", params: cat_params
      cat = Cat.first
      updated_cat_params = {
        cat: {
          name: "Aleksis",
          age: 11,
          status: "Married", 
          looking_for: "Companionship", 
          about_me: "If life were a box of chocolates, lets just say I've been through the whole box. At this point, I'm looking for adventure and new sparks.", 
          hobbies: "Art of garnishing, Performing at the local community theatre, Calligraphy, Flying drones", 
          image: "https://images.hdqwalls.com/download/cheetah-close-up-ml-1920x1080.jpg"
        }
      }
      
      patch "/cats/#{cat.id}", params: updated_cat_params
      updated_cat = Cat.find(cat.id)
      expect(response).to have_http_status(200)
      expect(updated_cat.age).to eq 11
    end
  end

  describe "DELETE /destroy" do
    it "deletes a cat profile" do
      cat_params = {
        cat: {
          name: "Aleksis",
          age: 10,
          status: "Married", 
          looking_for: "Companionship", 
          about_me: "If life were a box of chocolates, lets just say I've been through the whole box. At this point, I'm looking for adventure and new sparks.", 
          hobbies: "Art of garnishing, Performing at the local community theatre, Calligraphy, Flying drones", 
          image: "https://images.hdqwalls.com/download/cheetah-close-up-ml-1920x1080.jpg"
        }
      }
    post "/cats", params: cat_params
    cat = Cat.first
    delete "/cats/#{cat.id}"
    expect(response).to have_http_status(200)
    cats = Cat.all
    expect(cats).to be_empty 
    end
  end
end
