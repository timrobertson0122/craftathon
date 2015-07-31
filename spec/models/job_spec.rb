require 'rails_helper'

describe Job do

  it {is_expected.to have_many :job_applications }

end