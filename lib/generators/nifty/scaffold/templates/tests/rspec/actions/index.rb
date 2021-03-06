<%- unless view_language == 'ember_api' -%>
  it 'index action should render index template' do
    <%= instance_name %> = FactoryGirl.create(:<%= instance_name %>)
    get :index
    expect(response).to render_template(:index)
  end
<%- end -%>

<%- if view_language == 'jbuilder' || view_language == 'ember_api' -%>
  it 'index action should render index template' do
    <%= instance_name %> = FactoryGirl.create(:<%= instance_name %>)
    get :index, format: :json
    expect(response.status.to_i).to eq 200
  end
<%- end -%>
