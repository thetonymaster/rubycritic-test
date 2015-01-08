require 'spec_helper'

describe VotationsController do
  login_user

  describe '#index' do
    let(:action) { :index }

    before { get action }

    it_should_behave_like 'success rendering'
  end
end
