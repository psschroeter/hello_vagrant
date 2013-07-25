require 'berkshelf/vagrant'

Vagrant.configure("2") do |config|
  config.vm.hostname = "hellovagrant"
  config.vm.box = "rightimage-ubuntu-12.04"
  config.vm.box_url = "https://rightscale-vagrant.s3.amazonaws.com/virtualbox/ubuntu/12.04/RightImage_Ubuntu_12.04_x64_v13.5.0.1.box"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "768"]
  end

  # Assign this VM to a host-only network IP, allowing you to access it
  # via the IP. Host-only networks can talk to the host machine as well as
  # any other machines on the same network, but cannot be accessed (through this
  # network interface) by any external networks.
  config.vm.network :private_network, ip: "33.33.33.10"

  config.ssh.max_tries = 40
  config.ssh.timeout   = 120

  config.vm.provision :chef_solo do |chef|
    # Ensure we use same sandbox'd chef that a cloud instance might use. If these
    # two lines are removed the system chef will be used.
    chef.binary_env = "GEM_HOME=/opt/rightscale/sandbox/lib/ruby/gems/1.8 GEM_PATH=/opt/rightscale/sandbox/lib/ruby/gems/1.8"
    chef.binary_path = "/opt/rightscale/sandbox/bin"

    # Attributes can be passed in as a json blob. Hard coded for this example.
    chef.json = {
      :hello_vagrant => {
        :name => "You"
      }
    }

    chef.run_list = [
      "recipe[hello_vagrant]"
    ]
  end
end
