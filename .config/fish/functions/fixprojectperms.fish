function fixprojectperms -d "Give containerroot=100000 access after cp/mv"
    sudo chown -R $USER:$USER *
    chmod -R o-rwx *
    find * -type d -exec chmod g+rwxs {} +
    find * -type d -exec setfacl -m "default:g::rwX" {} +
    find * -type d -exec setfacl -m "default:u:100000:rwX" {} +
    find * -type d -exec setfacl -m "u:100000:rwX" {} +
    find * -type f -executable -exec setfacl -m "u:100000:rwx" {} +
    find * -type f ! -executable -exec setfacl -m "u:100000:rw" {} +
end
