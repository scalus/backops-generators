  it "destroy action should destroy model and redirect to index action" do
    <%= instance_name %> = Factory(:<%= instance_name %>)
    delete :destroy, :id => <%= instance_name %>.id
    response.should redirect_to(<%= items_url %>)
    <%= class_name %>.exists?(<%= instance_name %>.id).should be_false
  end
