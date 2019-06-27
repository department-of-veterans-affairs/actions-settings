FROM node:lts-alpine

LABEL version="1.0.0"
LABEL repository="https://github.com/elstudio/actions-settings"
LABEL homepage="https://github.com/elstudio/actions-settings"
LABEL maintainer="el-studio Actions <servers+actions@el-studio.com>"

LABEL com.github.actions.name="GitHub Action to run Probot/settings"
LABEL com.github.actions.description="Sets and enforces repository defaults."
LABEL com.github.actions.icon="truck"
LABEL com.github.actions.color="purple"

ENV PATH=$PATH:/app/node_modules/.bin
WORKDIR /app
COPY . .
RUN npm install --production

# ENTRYPOINT ["probot", "receive"]
# CMD ["/app/index.js"]

ENTRYPOINT ["/app/entrypoint.sh"]
