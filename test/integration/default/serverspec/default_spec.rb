require 'serverspec'

# Required by serverspec
set :backend, :exec

# TODO fix
describe user('dynatrace') do
  it { should exist }
  # TODO fix
  it { should belong_to_group 'dynatrace' }
end

describe file('/opt/dynatrace') do
  it { should be_directory }
  it { should be_symlink }
end

describe file('/opt/dynatrace/agent') do
  it { should be_directory }
  # TODO fix
  it { should be_owned_by 'dynatrace' }
  # TODO fix
  it { should be_grouped_into 'dynatrace' }
end
