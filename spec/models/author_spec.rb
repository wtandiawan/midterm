require 'spec_helper'

describe Author do
  it { should respond_to :name }
  it { should validate_presence_of :name }

  it { should respond_to :genres }
  it { should validate_presence_of :genres }

  it { should have_many :books }
end
