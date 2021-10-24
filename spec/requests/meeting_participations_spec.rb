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

RSpec.describe "/meeting_participations", type: :request do
  
  # MeetingParticipation. As you add validations to MeetingParticipation, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      MeetingParticipation.create! valid_attributes
      get meeting_participations_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      meeting_participation = MeetingParticipation.create! valid_attributes
      get meeting_participation_url(meeting_participation)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_meeting_participation_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      meeting_participation = MeetingParticipation.create! valid_attributes
      get edit_meeting_participation_url(meeting_participation)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new MeetingParticipation" do
        expect {
          post meeting_participations_url, params: { meeting_participation: valid_attributes }
        }.to change(MeetingParticipation, :count).by(1)
      end

      it "redirects to the created meeting_participation" do
        post meeting_participations_url, params: { meeting_participation: valid_attributes }
        expect(response).to redirect_to(meeting_participation_url(MeetingParticipation.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new MeetingParticipation" do
        expect {
          post meeting_participations_url, params: { meeting_participation: invalid_attributes }
        }.to change(MeetingParticipation, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post meeting_participations_url, params: { meeting_participation: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested meeting_participation" do
        meeting_participation = MeetingParticipation.create! valid_attributes
        patch meeting_participation_url(meeting_participation), params: { meeting_participation: new_attributes }
        meeting_participation.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the meeting_participation" do
        meeting_participation = MeetingParticipation.create! valid_attributes
        patch meeting_participation_url(meeting_participation), params: { meeting_participation: new_attributes }
        meeting_participation.reload
        expect(response).to redirect_to(meeting_participation_url(meeting_participation))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        meeting_participation = MeetingParticipation.create! valid_attributes
        patch meeting_participation_url(meeting_participation), params: { meeting_participation: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested meeting_participation" do
      meeting_participation = MeetingParticipation.create! valid_attributes
      expect {
        delete meeting_participation_url(meeting_participation)
      }.to change(MeetingParticipation, :count).by(-1)
    end

    it "redirects to the meeting_participations list" do
      meeting_participation = MeetingParticipation.create! valid_attributes
      delete meeting_participation_url(meeting_participation)
      expect(response).to redirect_to(meeting_participations_url)
    end
  end
end
