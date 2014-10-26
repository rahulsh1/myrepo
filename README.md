myrepo
======
### Setting up local environment

#### Installation
You will need the following components locally installed
1. Docker
   Refer [here][http://docs.docker.com/installation) for instructions on how to install Docker.
   The latest version as of this writing is v1.3
   If you are on Mac/Windows, there is an additional step on installing Boot2Docker image and then running Docker on it.
   Refer to link above for more details.
   
2. Fig
   Refer [here](http://www.fig.sh/install.html) on how to install fig that allows us to manage docker containers.
   
3. Python & git 

#### Installation verification
Make sure you have docker `1.3` or above and fig `1.0.0` and above.
    $ fig --version
      fig 1.0.0

    $ docker --version
      Docker version 1.3.0, build c78088f

#### Download the code
    $ git clone https://github.com/code-for-india/ebolaproject.git

    $ cd ebolaproject/

#### Setup Database 
__Note:__ Perform this setup only if you want to create/recreate the database, Skip otherwise

    $ ./setupdb.sh
    
#### Build the Web and DB containers and start them
    $ fig up
    
