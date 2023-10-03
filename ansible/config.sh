cat <<EOF > $HOME/.ssh/config
host ec2
   HostName $1
   user ubuntu
   identityFile key.pem
   StrictHostKeyChecking=no
EOF