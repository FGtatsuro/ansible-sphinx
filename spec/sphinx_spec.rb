require "spec_helper_#{ENV['SPEC_TARGET_BACKEND']}"

describe package('Sphinx') do
  it { should be_installed.by(:pip) }
end

describe command('which sphinx-quickstart') do
  its(:exit_status) { should eq 0 }
end
