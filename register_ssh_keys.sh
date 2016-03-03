for host in $(ansible-playbook -i hosts playbook.yml --list-hosts --limit points-build-workers | grep '^    '); do
    echo "Registering $host..."
    sshpass -f pass ssh-copy-id -i $HOME/.ssh/id_rsa_pts.pub -o StrictHostKeyChecking=no "kevin.qiu@$host"
done
