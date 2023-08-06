curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Uploading Build $(cd ~/rom/out/target/product/chime/ && ls *.zip)"
rclone copy ~/rom/out/target/product/chime/Nusantara_v*.zip 298:chime -P
curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Build $(cd ~/rom/out/target/product/chime/ && ls *.zip) Uploaded Successfully!"

