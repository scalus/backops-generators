  it "create action should render new template when model is invalid" do
    <%= instance_name %> = Factory.build(:<%= instance_name %>)
    <%= class_name %>.any_instance.stubs(:valid?).returns(false)
    post :create, :<%= instance_name %> => <%= instance_name %>.attributes
    response.should render_template(:new)
  end

  it "create action should redirect when model is valid" do
    <%= instance_name %> = Factory.build(:<%= instance_name %>)
    <%= class_name %>.any_instance.stubs(:valid?).returns(true)
    post :create, :<%= instance_name %> => <%= instance_name %>.attributes
    response.should redirect_to(<%= item_path_for_spec('url') %>)
  end
