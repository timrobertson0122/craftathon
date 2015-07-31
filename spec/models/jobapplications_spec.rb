require 'rails_helper'

describe JobApplication do

  it { is_expected.to belong_to :jobhunter }
  it { is_expected.to belong_to :job }

end