# terracraft
Run Terraform with Minecraft! A fun way of experimenting with Minecraft and Terraform


## Install and Run

- Git clone the repo on your laptop
- Enter the repo with cd ./terracraft and run ``docker-compose up`` or ``docker-compose up -d`` to start the minecraft server container
- Launch the Minecraft App from your client and connect to the server in the Multiplayer section
- Make your player an op user to allow interaction with the /bashful command to run bash commands on the Minecraft server
- Now press 't' on the PC to enable the chat mode on Minecraft and test the terminal with ``/bashful echo hello world``
- The Terraform folder and example is located in home/terraform/ec2 (but feel free to move it) - you can run terraform commands there e.g. ``/bashful terraform -chdir=home/terraform/ec2 init`` then ``/bashful terraform -chdir=home/terraform/ec2 plan -out=tfplan`` and finally ``/bashful terraform -chdir=home/terraform/ec2 apply -auto-approve``

Have fun!
