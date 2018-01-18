require "spec_helper_#{ENV['SPEC_TARGET_BACKEND']}"

[
  'sphinx',
  'nbsphinx',
  'recommonmark',
  'sphinx-intl'
].each do |p|
  describe package(p) do
    it { should be_installed.by(:pip) }
  end
end

[
  'sphinx-quickstart',
  'sphinx-intl',
].each do |c|
  describe command("which #{c}") do
    its(:exit_status) { should eq 0 }
  end
end

describe command('sphinx-build'), :if => ENV['SPHINX_VERSION'] do
  its(:stdout) { should contain('1.4.6') }
end
