<%- if view_language == 'ember_api' -%>
  def edit
    @<%= instance_name %> = current_user.<%= instances_name %>.find(params[:id])
    respond_to do |format|
      format.json {
        render json: @<%= instance_name %>, serializer: <%= class_name %>Serializer
      }
      format.html { render action: :index }
    end
  end
<%- else -%>
  def edit
    @<%= instance_name %> = <%= class_name %>.find(params[:id])
    @<%= instance_name %> = current_user.<%= instances_name %>.find(params[:id])
  end
<%- end -%>
