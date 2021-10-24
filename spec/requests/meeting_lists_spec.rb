 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/meeting_lists", type: :request do
  
  # MeetingList. As you add validations to MeetingList, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      MeetingList.create! valid_attributes
      get meeting_lists_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      meeting_list = MeetingList.create! valid_attributes
      get meeting_list_url(meeting_list)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_meeting_list_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      meeting_list = MeetingList.create! valid_attributes
      get edit_meeting_list_url(meeting_list)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new MeetingList" do
        expect {
          post meeting_lists_url, params: { meeting_list: valid_attributes }
        }.to change(MeetingList, :count).by(1)
      end

      it "redirects to the created meeting_list" do
        post meeting_lists_url, params: { meeting_list: valid_attributes }
        expect(response).to redirect_to(meeting_list_url(MeetingList.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new MeetingList" do
        expect {
          post meeting_lists_url, params: { meeting_list: invalid_attributes }
        }.to change(MeetingList, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post meeting_lists_url, params: { meeting_list: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested meeting_list" do
        meeting_list = MeetingList.create! valid_attributes
        patch meeting_list_url(meeting_list), params: { meeting_list: new_attributes }
        meeting_list.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the meeting_list" do
        meeting_list = MeetingList.create! valid_attributes
        patch meeting_list_url(meeting_list), params: { meeting_list: new_attributes }
        meeting_list.reload
        expect(response).to redirect_to(meeting_list_url(meeting_list))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        meeting_list = MeetingList.create! valid_attributes
        patch meeting_list_url(meeting_list), params: { meeting_list: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested meeting_list" do
      meeting_list = MeetingList.create! valid_attributes
      expect {
        delete meeting_list_url(meeting_list)
      }.to change(MeetingList, :count).by(-1)
    end

    it "redirects to the meeting_lists list" do
      meeting_list = MeetingList.create! valid_attributes
      delete meeting_list_url(meeting_list)
      expect(response).to redirect_to(meeting_lists_url)
    end
  end
end
