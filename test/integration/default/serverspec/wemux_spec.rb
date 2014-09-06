require 'spec_helper'

describe file('/usr/local/share/wemux/wemux') do
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end

describe file('/usr/local/bin/wemux') do
  it { should be_file }
  it { should be_executable }
  it { should be_executable.by('others') }
  it { should be_linked_to '/usr/local/share/wemux/wemux' }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end

describe file('/usr/local/etc/wemux.conf') do
  it { should be_file }
  its(:content) { should match /^host_list=\(\s*root\s*\)/ }
end
