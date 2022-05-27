# 选择一个体积小的镜像 (~5MB)
FROM node:14-alpine

# 设置为工作目录，以下 RUN/CMD 命令都是在工作目录中进行执行
WORKDIR /code

# 把代码置于镜像
ADD . /code

# 装包
RUN yarn

CMD npm start

EXPOSE 3000