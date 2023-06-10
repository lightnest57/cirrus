curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Uploading Build..."
rclone copy ~/rom/out/target/product/citrus/risingOS-v*.zip fm293:citrus -P
curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Build $(cd ~/rom/out/target/product/citrus/ && ls *.zip) Uploaded Successfully!"