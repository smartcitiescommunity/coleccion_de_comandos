cat .ssh/id_rsa.pub | ssh hostname 'cat >> .ssh/authorized_keys'
