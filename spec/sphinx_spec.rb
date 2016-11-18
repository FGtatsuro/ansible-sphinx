require "spec_helper_#{ENV['SPEC_TARGET_BACKEND']}"

describe package('Sphinx') do
  it { should be_installed.by(:pip) }
end

[
  'sphinx-quickstart',
  'sphinx-intl'
].each do |c|
  describe command("which #{c}") do
    its(:exit_status) { should eq 0 }
  end
end

describe command('sphinx-build'), :if => ENV['SPHINX_VERSION'] do
  its(:stdout) { should contain('1.4.6') }
end

describe command("python -c 'import recommonmark'") do
  its(:exit_status) { should eq 0 }
end
