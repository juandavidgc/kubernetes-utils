# kubernetes-utils

Kubeadm
-------
This steps were executed in a Ubuntu Bionic 18.04 VM (using Virtual Box).

To install & configure the master:

    1.  As root user, execute the command /kubeadm/scripts/install-kubernetes.sh. It'll install
        docker and kubeadm with all of their dependencies.
    2.  As root user, execute the command /kubeadm/scripts/run-kubernetes-master.sh. It'll deploy
        kubeadm.
        Note: Copy the "kubeadm join ..." command. This command will be used to join nodes.
    3.  As root user, execute the command /kubeadm/scripts/create-user-master.sh. It'll add a normal
        user, "ubuntu".
    4.  Login as ubuntu user.

To install & configure the nodes (These steps must be executed on each node machine):

    1.  As root user, execute the command /kubeadm/scripts/install-kubernetes.sh. It'll install
        docker and kubeadm with all of their dependencies.
    2.  As root user, execute the command /kubeadm/scripts/create-user-node.sh. It'll add a normal
        user, "ubuntu".
    3.  As root user, execute the "kubeadm join ..." command previously captured.
    4.  Login as ubuntu user.

If the installation was successfull, executing "kubectl get nodes" in the master and you'll see
the list of nodes.


