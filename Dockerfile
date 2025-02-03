ARG ImageVersion
FROM atlassian/jira-software:${ImageVersion}
RUN apt update
RUN echo "ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true" | debconf-set-selections
RUN DEBIAN_FRONTEND=noninteractive apt install -y ttf-mscorefonts-installer
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt install -y ./google-chrome-stable_current_amd64.deb
RUN rm -f google-chrome-stable_current_amd64.deb