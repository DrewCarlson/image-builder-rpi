require 'spec_helper'

describe file('/etc/apt/sources.list.d/raspberrypi.list') do
  it { should be_file }
  it { should be_mode 644 }
  it { should be_owned_by 'root' }
  it { should contain 'deb http://raspbian.raspberrypi.org/raspbian/ bullseye main' }
end
