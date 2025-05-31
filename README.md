This is devops-poc, which I have started to build a CI-CD pipeline which deploys GCP resources like VM   automatically when we commit  changes to  our  git repository.

Currently I have created a GCP VM, on which I have installed GIT software and connected to Github. I will create modules for network resources and vm. After  completion, I will push the code to feature branch of git repository.

There are three branches in our git repository

a)feature - when I start building the code intially
b)dev
c)main

So I have created two seperate modules,

1) network module
2) vm module

network module:- It contains the components like VPC Network, Firewall, Subnet.

vm module:- It is used to create a vm with provisiong model as "SPOT" to save cost.

Also  in vm module, I have defined a data block which fetches subnetwork from the project and it provides input during  vm  creation.


