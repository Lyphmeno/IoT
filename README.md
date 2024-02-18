Inception of Things Project :
=============================

<p><img src="https://d2gbo5uoddvg5.cloudfront.net/images/logo-kubernetes.gif" alt="Kubernetes" width="458" height="133"></p>

Welcome to the IoT project !  
This project is an introduction to [Kubernetes](https://fr.wikipedia.org/wiki/Kubernetes) and [Vagrant](https://fr.wikipedia.org/wiki/Vagrant)

Project Description
-------------------

Inception of Things is divided in three parts. Each of them will teach us something different but related to one and other:

* **Part 1:** _K3s and Vagrant_
    
    The first exercice consist in setting up two virtual machines with Vagrant.
    
    1.  _Server_
    2.  _ServerWorker_
    
    Install K3s _(light Kubernetes)_ on both machines. One in controller mode and the other in agent mode. We will meed to install [kubectl](https://kubernetes.io/fr/docs/tasks/tools/install-kubectl/) on both machines. Then we learn to use vagrant commands _(up, ssh, destroy...)_ and kubectl commands _(get, config...)_
    
* **Part 2:** _K3s and Ingress_
    
    Set up one virtual machine with K3s in server mode and 3 web applications that will run in your K3s instance. You should have 3 replicas for the second app.
    
    * App1 **1/1**
    * App2 **3/3**
    * App3 **1/1**
    
    We are setting up the default App3 in the `ingress.yaml` by not asknig for any `host`.
    
* **Part 3:** _K3d and Argo CD_
    
    Now its time to learn about [K3d](https://k3d.io/v5.6.0/) !  
    Even thought we are not using Vagrant, we are still doing this in a virtual machine since we need to install some stuff.  
    The point of this part is to learn about **continuous integration**, this is why we are using [Argo CD](https://argo-cd.readthedocs.io/en/stable/getting_started/). We need to create two namespaces
    
    * `argocd` dedicated to installing and setting up Argo CD
    * `dev` needed to contain the app that will be automatically deployed by Argo CD using an online Github repository
    

Project Requirements
--------------------

* **Part 1:**
    * Install the latest stable version of the distribution, [this](https://app.vagrantup.com/boxes/search) is the best distribution images site I found.
    * `hosname` -\> _login_S or _login_SW depending on server or worker
    * Be able to connect to `ssh` with no password
* **Part 2:**
    * Install the latest stable version of the distribution
    * App3 must be the default one
* **Part 3:**
    * Vagrant is Forbidden here
    * Not required but [Ingress](https://fr.wikipedia.org/wiki/Ingress) is recommended if you don't want to port forward every time you update like we do here

Resources
---------

* [Kubernetes's Documentation](https://kubernetes.io/docs/setup/)
* [Vagrant Documentation](https://developer.hashicorp.com/vagrant/docs)
* [Ingress's Documentation](https://kubernetes.io/fr/docs/concepts/services-networking/ingress/)
