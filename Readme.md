# Vagrant virual machine with python3.11

Your need install vagrant and virtualbox for up this configuration.

Your need install [vagrant](https://github.com/hashicorp/vagrant-installers/releases/tag/v2.3.4.dev%2Bmain "vagrant") and  [virtualbox](https://www.virtualbox.org/ "virtualbox") for up this configuration. Optional you can use [make](https://www.gnu.org/software/make/ "make").

### Step 1

Download box bento/debian-11 for virtualbox from [vagrantup](https://app.vagrantup.com/bento/boxes/debian-11.5 "vagrantup").

### Step 2

Clonr this repository: 

``git clone https://github.com/codesshaman/vagrant_python_debian_gui.git``

### Step 3

Copy/move box and named it "debian". In the terminal go inside the repository folder:

``cp ~/Downloads/a2a5f4df-eba7-4c0c-88e4-7ff6d02d5ada path_to/vagrant_python_debian_gui/debian``

``cd vagrant_python_debian_gui``

### Step 4

Copy link to your version of virtualbox guest additions from website

``http://download.virtualbox.org/virtualbox/``

and past to Vagrantfile in the GUEST_ADDITIONS variable.

Copy link to your project git in the GIT variable (not required, you can clone your repository after vm building).

### Step 5

Clone your project into "project" folder

Example:

``git clone https://gitlab.school/your_project_repo.git -b develop project/myproject``


### Step 6

Inicialize configuration:

``vagrant box add bento/debian-11.5 debian``

or with make:

``make build``

### Step 7

Install configuration:

``vagrant up --provider=virtualbox``

or with make:

``make``

### Step 8

Connect:

``ssh vagrant@192.168.58.98``

or with make:

``make connect``

### Step 9

Start GUI in virtualbox windows:

Login and password: vagrant:vagrant

Launch GUI:

``sudo startx``

## Howto use this configuration?

First way: your IDE

1. Open external folder "project" or "project/src" in Pycharm or different IDE.
2. Write code in your IDE.
3. Launch code in GUI using kitty terminal.

Second way: full diving

1. Open VM window
2. Open "kitty" terminal
3. Write "pycharm" and press Enter
4. Configure and use pycharm CE inside of VM
3. Use VM for project creation and external project folder for git