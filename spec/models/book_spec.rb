require 'spec_helper'

describe Book do
  it { should belong_to :author }

  it { should respond_to :title }
  it { should validate_presence_of :title }

  it { should respond_to :review }
  it { should validate_presence_of :review }
end
