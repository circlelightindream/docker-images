#! /bin/bash

image=${1}
tmp_image=${image#*\/}
gen_image=${tmp_image//[\/:]/-}

echo "will download this image from: registry.cn-zhangjiakou.aliyuncs.com/treasure-mountain/docker-images:${gen_image}"
docker pull registry.cn-zhangjiakou.aliyuncs.com/treasure-mountain/docker-images:${gen_image}
docker tag registry.cn-zhangjiakou.aliyuncs.com/treasure-mountain/docker-images:${gen_image} ${image}
docker rmi registry.cn-zhangjiakou.aliyuncs.com/treasure-mountain/docker-images:${gen_image}
echo -e ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> download successfully!\n"
