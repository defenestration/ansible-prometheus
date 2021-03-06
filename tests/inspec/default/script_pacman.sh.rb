# encoding: utf-8
# author: Mesaguy

describe file('/opt/prometheus/scripts/pacman.sh') do
    it { should be_file }
    it { should be_executable }
    its('content') { should match /Description: Expose metrics from pacman updates/ }
    its('size') { should > 800 }
    its('mode') { should cmp '0555' }
    its('owner') { should eq 'root' }
    its('group') { should eq 'prometheus' }
end
