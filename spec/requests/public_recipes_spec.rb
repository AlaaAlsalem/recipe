# spec/requests/public_recipes_spec.rb

RSpec.describe "PublicRecipes", type: :request do
    describe "GET /public_recipes" do
      it "returns a success response" do
        get public_recipes_path
        expect(response).to have_http_status(200)
      end
  
      it "assigns @culinary_recipes with public recipes" do
        # Assuming you have some public recipes in the database
        public_recipes = create_list(:culinary_recipe, 3, public: true)
  
        get public_recipes_path
        expect(assigns(:culinary_recipes)).to eq(public_recipes)
      end
  
      it "renders the index template" do
        get public_recipes_path
        expect(response).to render_template(:index)
      end
    end
  end
  