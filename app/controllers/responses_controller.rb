class ResponsesController < ApplicationController

    def thank_you
      render("thankyou.html.erb")
    end

  def index
    @responses = Response.all

    render("responses/index.html.erb")
  end

  def show
    @response = Response.find(params[:id])
    @outcometext = if @response.outcome == "DNP"
      "Why did you not participate in the competition even though you indicated interest in it?"
    else
      "What is the most important reason for your score?"
    end
    render("responses/show.html.erb")
  end

  def new_participated
    @interest_indication = InterestIndication.find(params[:id])
    @competition_name = InterestIndication.find(params[:id]).competition_name
    @response = Response.new

    render("responses/new_participated.html.erb")
  end

  def new_dnp
    @interest_indication = InterestIndication.find(params[:id])
    @competition_name = InterestIndication.find(params[:id]).competition_name
    @response = Response.new

    render("responses/new_dnp.html.erb")
  end


  def create
    @response = Response.new

    @response.interest_indication_id = params[:interest_indication_id]
    @response.outcome = params[:outcome]
    @response.likely_to_recommend = params[:likely_to_recommend]
    @response.do_again = params[:do_again]
    @response.improvement_suggestions = params[:improvement_suggestions]

    save_status = @response.save

    if save_status == true
      render("thankyou.html.erb", :notice => "Thank you for completing the feedback survey.")
    else
      render("responses/new.html.erb")
    end
  end

  def edit
    @response = Response.find(params[:id])

    render("responses/edit.html.erb")
  end

  def update
    @response = Response.find(params[:id])

    @response.interest_indication_id = params[:interest_indication_id]
    @response.outcome = params[:outcome]
    @response.likely_to_recommend = params[:likely_to_recommend]
    @response.do_again = params[:do_again]
    @response.improvement_suggestions = params[:improvement_suggestions]

    save_status = @response.save

    if save_status == true
      redirect_to("/responses/#{@response.id}", :notice => "Response updated successfully.")
    else
      render("responses/edit.html.erb")
    end
  end


  def destroy
    @response = Response.find(params[:id])

    @response.destroy

    if URI(request.referer).path == "/responses/#{@response.id}"
      redirect_to("/", :notice => "Response deleted.")
    else
      redirect_to(:back, :notice => "Response deleted.")
    end
  end
end
