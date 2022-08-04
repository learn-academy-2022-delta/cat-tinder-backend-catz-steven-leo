require 'rails_helper'

RSpec.describe "Cats", type: :request do

  describe "GET /index" do
    it "gets a list of cats" do 
      Cat.create( #put cat model info in here once seed issues are

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
          #copy above info from line 6 - cat information
        }
      }

      post "/cats", params: cat_params
      expect(response).to have_http_status(200)
      cat = Cat.first 
      expect(cat.name).to eq 'name from above'
      expec(cat.age).to eq ''
      expect(cat.status).to eq ''
      expect(cat.looking_for).to eq ''
      expect(cat.about_me).to eq ''
      expect(cat.hobbies).to eq ''
      
    end 
  end

  describe "PATCH /update" do
    it "updates a cat profile" do
      cat_params = {
        cat: {
          #copy above info from line 6 - cat information
        }
      }

      post "/cats", params: cat_params
      cat = Cat.first
      updated_cat_params = {
        cat: {
          #copy above info from line 6 - but we update something in cat information
        }
      }
      
      patch "/cats/#{cat.id}", params: updated_cat_params
      updated_cat = Cat.Find(cat.id)
      expect(response).to have_http_status(200)
      expect(updated_cat.?).to eq ? <<updated param
    end
  end

  describe "DELETE /destroy" do
    it "deletes a cat profile" do
      cat_params = {
        cat: {
          #copy above info from line 6 - cat information
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
