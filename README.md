<!DOCTYPE html>
<html>
<body>
  <h1>Inception of Things Project :</a></h1>
  <p><img src="https://d2gbo5uoddvg5.cloudfront.net/images/logo-kubernetes.gif" alt="Kubernetes" width="458" height="133"></p>
  Welcome to the IoT project !<br>
  This project is an introduction to <a href="https://fr.wikipedia.org/wiki/Kubernetes">Kubernetes</a> and <a href="https://fr.wikipedia.org/wiki/Vagrant">Vagrant</a>
  
  <h2>Project Description</h2>
  <p>Inception of Things is divided in three parts. Each of them will teach us something different but related to one and other:</p>
  <ul>
    <li>
      <strong>Part 1:</strong> <i>K3s and Vagrant</i>
        <p>The first exercice consist in setting up two virtual machines with Vagrant.
            <ol>
                <li><i>Server</i></li>
                <li><i>ServerWorker</i></li>
            </ol>
        Install K3s <i>(light Kubernetes)</i> on both machines. One in controller mode and the other in agent mode. We will meed to install <a href="https://kubernetes.io/fr/docs/tasks/tools/install-kubectl/">kubectl</a> on both machines. Then we learn to use vagrant commands <i>(up, ssh, destroy...)</i> and kubectl commands <i>(get, config...)</i></p>
    </li>
    <li>
      <strong>Part 2:</strong> <i>K3s and Ingress</i>
      <p>Set up one virtual machine with K3s in server mode and 3 web applications that will run in your K3s instance. You should have 3 replicas for the second app.
      <ul>
        <li>App1 <strong>1/1</strong></li>
        <li>App2 <strong>3/3</strong></li>
        <li>App3 <strong>1/1</strong></li>
      </ul>
      We are setting up the default App3 in the <code>ingress.yaml</code> by not asknig for any <code>host</code>.
      </p>
    </li>
    <li>
      <strong>Part 3:</strong> <i>K3d and Argo CD</i>
      <p>Now its time to learn about <a href="https://k3d.io/v5.6.0/">K3d</a> !<br>
      Even thought we are not using Vagrant, we are still doing this in a virtual machine since we need to install some stuff.<br>
      The point of this part is to learn about <strong>continuous integration</strong>, this is why we are using <a href="https://argo-cd.readthedocs.io/en/stable/getting_started/">Argo CD</a>. We need to create two namespaces
      <ul>
        <li><code>argocd</code> dedicated to installing and setting up Argo CD</li>
        <li><code>dev</code> needed to contain the app that will be automatically deployed by Argo CD using an online Github repository</li>
      </ul>
      </p>
    </li>
  </ul>
  <h2>Project Requirements</h2>
  <ul>
    <li>
      <strong>Part 1:</strong>
        <ul>
            <li>Install the latest stable version of the distribution, <a href="https://app.vagrantup.com/boxes/search">this</a> is the best distribution images site I found.</li>
            <li><code>hosname</code> -> <i>login</i>S or <i>login</i>SW depending on server or worker</li>
            <li>Be able to connect to <code>ssh</code> with no password</li>
        </ul>
    </li>
    <li>
      <strong>Part 2:</strong>
        <ul>
            <li>Install the latest stable version of the distribution</li>
            <li>App3 must be the default one</li>
        </ul>
    </li>
    <li>
      <strong>Part 3:</strong>
        <ul>
            <li>Vagrant is Forbidden here</li>
            <li>Not required but <a href="https://fr.wikipedia.org/wiki/Ingress">Ingress</a> is recommended if you don't want to port forward every time you update like we do here</li>
        </ul>
    </li>
  </ul>

  <h2>Resources</h2>
  <ul>
    <li><a href="https://kubernetes.io/docs/setup/">Kubernetes's Documentation</a></li>
    <li><a href="https://developer.hashicorp.com/vagrant/docs">Vagrant Documentation</a></li>
    <li><a href="https://kubernetes.io/fr/docs/concepts/services-networking/ingress/">Ingress's Documentation</a></li>

</body>
</html>
