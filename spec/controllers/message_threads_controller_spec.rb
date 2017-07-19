require "rails_helper"

RSpec.describe MessageThreadsController do
  before(:each) do
    patient = create(:user, role: 'patient')
    care_manager = create(:user, role: 'care_manager')
    patient.care_managers << care_manager

    MessageThread.last.messages.create(
      message_text: 'get better',
      author: care_manager.name
    )
  end

  describe "Get 'index'" do
    it "returns http sucess" do
      get 'index', params: {'user_id' => User.first.id}
      expect(response).to be_success
    end
  end
end
